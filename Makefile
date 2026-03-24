NAMES		=	questions solutions answer_sheet
PDF		=	$(NAMES:%=%.pdf)

.PHONY:	all clean

all:	$(PDF)

$(PDF):	%.pdf:	questions.typ exam.typ
	typst compile --input=type=$(@:%.pdf=%) $< $@

clean:
	rm -f $(PDF)
