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

html: arc42_html v_modell_97_html

pdf: arc42_pdf v_modell_97_pdf

arc42_html: ../../templates/arc42/arc42.html ../../templates/arc42/whitebox-template.html ../../templates/arc42/blackbox-template.html ../../templates/arc42/struktur_von_entwurfsentscheidungen.html ../../templates/arc42/szenarien_zur_definition_von_qualitaetsanforderungen.html ../../templates/arc42/struktur_technischer_konzepte.html ../../templates/arc42/struktur_von_schnittstellenbeschreibungen.html

arc42_pdf: ../../templates/arc42/arc42.pdf ../../templates/arc42/whitebox-template.pdf ../../templates/arc42/blackbox-template.pdf ../../templates/arc42/struktur_von_entwurfsentscheidungen.pdf ../../templates/arc42/szenarien_zur_definition_von_qualitaetsanforderungen.pdf ../../templates/arc42/struktur_technischer_konzepte.pdf ../../templates/arc42/struktur_von_schnittstellenbeschreibungen.pdf

v_modell_97_html: ../../templates/v-modell-97/AFo.html

v_modell_97_pdf: ../../templates/v-modell-97/AFo.pdf

clean: arc42_clean v_modell_97_clean

arc42_clean:
	rm -f ../../templates/arc42/arc42.html ../../templates/arc42/whitebox-template.html ../../templates/arc42/blackbox-template.html ../../templates/arc42/struktur_von_entwurfsentscheidungen.html ../../templates/arc42/szenarien_zur_definition_von_qualitaetsanforderungen.html ../../templates/arc42/struktur_technischer_konzepte.html ../../templates/arc42/struktur_von_schnittstellenbeschreibungen.html
	rm -f ../../templates/arc42/arc42.pdf ../../templates/arc42/whitebox-template.pdf ../../templates/arc42/blackbox-template.pdf ../../templates/arc42/struktur_von_entwurfsentscheidungen.pdf ../../templates/arc42/szenarien_zur_definition_von_qualitaetsanforderungen.pdf ../../templates/arc42/struktur_technischer_konzepte.pdf ../../templates/arc42/struktur_von_schnittstellenbeschreibungen.pdf

v_modell_97_clean:
	rm -f ../../templates/v-modell-97/AFo.html
	rm -f ../../templates/v-modell-97/AFo.pdf
