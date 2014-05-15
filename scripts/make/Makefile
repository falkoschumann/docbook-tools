LIB_DIR         = ../../lib
DOCBOOK_XML_DIR = $(LIB_DIR)/docbook
DOCBOOK_XSL_DIR = $(LIB_DIR)/docbook-xsl
FOP_DIR         = $(LIB_DIR)/fop
XSL_STYLE_HTML  = $(DOCBOOK_XSL_DIR)/html/docbook.xsl
XSL_STYLE_FO    = $(DOCBOOK_XSL_DIR)/fo/docbook.xsl

all: html pdf

%.html: %.xml
	xsltproc --output $@ $(XSL_STYLE_HTML) $<

%.fo: %.xml
	xsltproc --output $@ $(XSL_STYLE_FO) $<

%.pdf: %.fo
	$(FOP_DIR)/fop -fo $< -pdf $@

html: ../../templates/arc42/arc42.html

pdf: ../../templates/arc42/arc42.pdf

clean:
	rm -f ../../templates/arc42/arc42.html
	rm -f ../../templates/arc42/arc42.pdf
