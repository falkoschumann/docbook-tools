PROJECT_DIR         = example
LIB_DIR             = lib
DOCBOOK_DIR         = $(LIB_DIR)/docbook
FOP_DIR             = $(LIB_DIR)/fop
DOCBOOK_XSL_DIR     = $(LIB_DIR)/docbook-xsl
CUSTOM_XSL_DIR      = xsl
HTML_XSL            = $(DOCBOOK_XSL_DIR)/html/docbook.xsl
FO_XSL              = $(CUSTOM_XSL_DIR)/fo/custom.xsl
TITLEPAGE_XML       = $(CUSTOM_XSL_DIR)/fo/titlepage.xml
TITLEPAGE_XSL       = $(TITLEPAGE_XML:%.xml=%.xsl)
OPENDOCUMENT_XSL    = $(CUSTOM_XSL_DIR)/opendocument/docbook.xsl
DOCBOOK             = $(PROJECT_DIR)/Projektname.xml \
                      $(PROJECT_DIR)/Vorlage_Blackbox.xml \
                      $(PROJECT_DIR)/Vorlage_Whitebox.xml
HTML                = $(DOCBOOK:%.xml=%.html)
PDF                 = $(DOCBOOK:%.xml=%.pdf)
OPENDOCUMENT        = $(DOCBOOK:%.xml=%.fodt)

all: html pdf odt

html: $(HTML)

pdf: $(TITLEPAGE_XSL) $(PDF)

odt: $(OPENDOCUMENT)

%.html: %.xml $(HTML_XSL)
	xsltproc --xinclude --output $@ $(HTML_XSL) $<

%.fo: %.xml $(TITLEPAGE_XSL) $(FO_XSL)
	xsltproc --xinclude --output $@ $(FO_XSL) $<

%.pdf: %.fo
	$(FOP_DIR)/fop -fo $< -pdf $@

$(TITLEPAGE_XSL): $(TITLEPAGE_XML)
	xsltproc --output $(TITLEPAGE_XSL) $(DOCBOOK_XSL_DIR)/template/titlepage.xsl $(TITLEPAGE_XML)

%.fodt: %.xml $(OPENDOCUMENT_XSL)
	xsltproc --xinclude --output $@ $(OPENDOCUMENT_XSL) $<

clean:
	rm -f $(HTML) $(PDF) $(OPENDOCUMENT)
