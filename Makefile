TEX_SRC       = main
CTEX          = xelatex
CTEX_OUT_DIR  = .out
CTEX_FLAGS    = -halt-on-error -file-line-error -output-directory $(CTEX_OUT_DIR)
PDF_NAME      = $(TEX_SRC).pdf

all: latex
	cp ./$(CTEX_OUT_DIR)/$(PDF_NAME) ./$(PDF_NAME)

latex:
	mkdir -p $(CTEX_OUT_DIR)
	max_print_line=1000 $(CTEX) $(CTEX_FLAGS) $(TEX_SRC)

present:
	pdfpc --notes=right $(PDF_NAME)

clean:
	rm -rf $(CTEX_OUT_DIR)
	rm $(PDF_NAME)
