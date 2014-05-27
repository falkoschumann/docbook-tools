ROOT_DIR			= ../..
LIB_DIR				= $(ROOT_DIR)/lib
DOCBOOK_XML_DIR 	= $(LIB_DIR)/docbook
FOP_DIR         	= $(LIB_DIR)/fop
HTML_XSL  			= $(LIB_DIR)/docbook-xsl/html/docbook.xsl
FO_XSL   	 		= $(ROOT_DIR)/xsl/fo/custom.xsl
TITLEPAGE_XML		= $(ROOT_DIR)/xsl/fo/titlepage.xml
TITLEPAGE_XSL		= $(TITLEPAGE_XML:%.xml=%.xsl)
OPENDOCUMENT_XSL	= $(ROOT_DIR)/xsl/opendocument/docbook.xsl
DOCBOOK				= $(ROOT_DIR)/templates/arc42/arc42.xml \
					  $(ROOT_DIR)/templates/arc42/whitebox-template.xml \
					  $(ROOT_DIR)/templates/arc42/blackbox-template.xml \
					  $(ROOT_DIR)/templates/arc42/struktur_von_entwurfsentscheidungen.xml \
					  $(ROOT_DIR)/templates/arc42/szenarien_zur_definition_von_qualitaetsanforderungen.xml \
					  $(ROOT_DIR)/templates/arc42/struktur_technischer_konzepte.xml \
					  $(ROOT_DIR)/templates/arc42/struktur_von_schnittstellenbeschreibungen.xml \
					  $(ROOT_DIR)/templates/v-modell-97/Projektname.xml \
					  $(ROOT_DIR)/templates/v-modell-97/AFo.xml \
					  $(ROOT_DIR)/templates/v-modell-97/SysArc.xml \
					  $(ROOT_DIR)/templates/v-modell-97/TAnf.xml \
					  $(ROOT_DIR)/templates/v-modell-97/SSUeb.xml \
					  $(ROOT_DIR)/templates/v-modell-97/SSB.xml \
					  $(ROOT_DIR)/templates/v-modell-97/IntPl.xml
HTML				= $(DOCBOOK:%.xml=%.html)
PDF					= $(DOCBOOK:%.xml=%.pdf)

all: html pdf

html: $(HTML)

pdf: $(TITLEPAGE_XSL) $(PDF)

odt: $(ROOT_DIR)/templates/arc42/arc42.fodt

%.html: %.xml $(HTML_XSL)
	xsltproc --xinclude --output $@ $(HTML_XSL) $<

%.fo: %.xml $(TITLEPAGE_XSL) $(FO_XSL)
	xsltproc --xinclude --output $@ $(FO_XSL) $<

%.pdf: %.fo
	$(FOP_DIR)/fop -fo $< -pdf $@

$(TITLEPAGE_XSL): $(TITLEPAGE_XML)
	xsltproc --output $(TITLEPAGE_XSL) $(ROOT_DIR)/lib/docbook-xsl/template/titlepage.xsl $(TITLEPAGE_XML)

%.fodt: %.xml $(OPENDOCUMENT_XSL)
	xsltproc --xinclude --output $@ $(OPENDOCUMENT_XSL) $<

clean:
	rm -f $(HTML) $(PDF)
