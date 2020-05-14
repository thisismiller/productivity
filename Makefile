
ALL_PDFS := quarterly_plan.pdf weekly_plan.pdf planner.pdf weekly_review.pdf whole_week.pdf

all: ${ALL_PDFS} 

%.pdf: %.tex
	pdflatex $*.tex

whole_week.pdf: weekly_plan.pdf planner.pdf weekly_review.pdf
	pdfunite weekly_plan.pdf planner.pdf planner.pdf planner.pdf planner.pdf planner.pdf weekly_review.pdf $@

.PHONY: install
install: ${ALL_PDFS}
	cp ${ALL_PDFS} /media/psf/Home/Documents/
