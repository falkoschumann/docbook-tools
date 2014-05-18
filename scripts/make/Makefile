LIB_DIR         = ../../lib
DOCBOOK_XML_DIR = $(LIB_DIR)/docbook
FOP_DIR         = $(LIB_DIR)/fop
XSL_STYLE_HTML  = $(LIB_DIR)/docbook-xsl/html/docbook.xsl
XSL_STYLE_FO    = ../../xsl/fo/docbook.xsl

all: html pdf

%.html: %.xml
	xsltproc --output $@ $(XSL_STYLE_HTML) $<

%.fo: %.xml
	xsltproc --output $@ $(XSL_STYLE_FO) $<

%.pdf: %.fo
	$(FOP_DIR)/fop -fo $< -pdf $@

html: ../../templates/arc42/arc42.html ../../templates/v-modell-97/AFo.html

pdf: ../../templates/arc42/arc42.pdf ../../templates/v-modell-97/AFo.pdf

clean:
	rm -f ../../templates/arc42/arc42.html ../../templates/arc42/arc42.pdf
	rm -f ../../templates/v-modell-97/AFo.html ../../templates/v-modell-97/AFo.pdf
