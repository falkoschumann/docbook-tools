ROOT_DIR		= ../..
LIB_DIR         = $(ROOT_DIR)/lib
DOCBOOK_XML_DIR = $(LIB_DIR)/docbook
FOP_DIR         = $(LIB_DIR)/fop
HTML_XSL  		= $(LIB_DIR)/docbook-xsl/html/docbook.xsl
FO_XSL    		= $(ROOT_DIR)/xsl/fo/custom.xsl
TITLEPAGE_XML	= $(ROOT_DIR)/xsl/fo/titlepage.xml
TITLEPAGE_XSL	= $(TITLEPAGE_XML:%.xml=%.xsl)
DOCBOOK			= $(ROOT_DIR)/templates/arc42/arc42.xml \
				  $(ROOT_DIR)/templates/arc42/whitebox-template.xml \
				  $(ROOT_DIR)/templates/arc42/blackbox-template.xml \
				  $(ROOT_DIR)/templates/arc42/struktur_von_entwurfsentscheidungen.xml \
				  $(ROOT_DIR)/templates/arc42/szenarien_zur_definition_von_qualitaetsanforderungen.xml \
				  $(ROOT_DIR)/templates/arc42/struktur_technischer_konzepte.xml \
				  $(ROOT_DIR)/templates/arc42/struktur_von_schnittstellenbeschreibungen.xml
HTML			= $(DOCBOOK:%.xml=%.html)
PDF				= $(DOCBOOK:%.xml=%.pdf)

all: html pdf

html: $(HTML)

pdf: $(TITLEPAGE_XSL) $(PDF)

%.html: %.xml
	xsltproc --xinclude --output $@ $(HTML_XSL) $<

%.fo: %.xml $(TITLEPAGE_XSL)
	xsltproc --xinclude --output $@ $(FO_XSL) $<

%.pdf: %.fo
	$(FOP_DIR)/fop -fo $< -pdf $@

$(TITLEPAGE_XSL): $(TITLEPAGE_XML)
	xsltproc --output $(TITLEPAGE_XSL) $(ROOT_DIR)/lib/docbook-xsl/template/titlepage.xsl $(TITLEPAGE_XML)

clean:
	rm -f $(HTML) $(PDF)
