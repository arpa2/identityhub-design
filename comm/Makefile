

#
# We installed PlantUML in ../lib
# For options, just run $(UMLPROC) -h
#
UMLPROC = java -splash:/dev/null -jar ../lib/plantuml.jar


BASES += mail-incoming mail-outgoing

#CRASHES# EXTS += pdf
EXTS += svg
EXTS += png
#CRASHES# EXTS += txt

SOURCES = $(foreach base,$(BASES),$(base).seq )
TARGETS = $(foreach base,$(BASES),$(foreach ext,$(EXTS),$(base).$(ext) ))

fast:
	@echo '#'
	@echo '# You are using FAST rendering (or at least what Java calls fast)'
	@echo '#'
	$(UMLPROC) -tpng $(foreach base,$(BASES),$(base).seq)
	@echo '#'
	@echo '# NOTE: This does not render all.  Use "make all" instead of "make fast"'
	@echo '#'

all: $(TARGETS)

clean:
	rm -f $(TARGETS)

anew: clean all

pre-commit: all
	git add $(SOURCES) $(TARGETS)


#
# Rules for individual runs for each file/extension target combination
#
%.png: %.seq
	$(UMLPROC) -tpng "$<"

%.svg: %.seq
	$(UMLPROC) -tsvg "$<"

%.txt: %.seq
	$(UMLPROC) -ttxt "$<"

%.pdf: %.seq
	$(UMLPROC) -tpdf "$<"
