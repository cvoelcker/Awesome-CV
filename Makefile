.PHONY: examples

CC = xelatex
EXAMPLES_DIR = examples
RESUME_DIR = examples/resume
CV_DIR = examples/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')
CURRENT_DIR = current
CURRENT_CV_DIR = current/cv
DE_DIR = current_de
DE_CV_DIR = current_de/cv
CURRENT_CV_SRCS = $(shell find $(CURRENT_CV_DIR) -name '*.tex')

current.pdf: $(CURRENT_DIR)/cv.tex $(CURRENT_CV_SRC)
	$(CC) -output-directory=$(CURRENT_DIR) $<

current_de.pdf: $(DE_DIR)/cv.tex $(DE_CV_SRC)
	$(CC) -output-directory=$(DE_DIR) $<

#examples: $(foreach x, coverletter cv resume, $x.pdf)

resume.pdf: $(EXAMPLES_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

#cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
#	$(CC) -output-directory=$(EXAMPLES_DIR) $<

#coverletter.pdf: $(EXAMPLES_DIR)/coverletter.tex
#	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	#rm -rf $(CURRENT_DIR)/*.pdf
	rm -rf $(CURRENT_DIR)/*.aux
	rm -rf $(CURRENT_DIR)/*.log
	rm -rf $(CURRENT_DIR)/*.out
	#rm -rf $(DE_CV_DIR)/*.pdf
	rm -rf $(DE_DIR)/*.aux
	rm -rf $(DE_DIR)/*.log
	rm -rf $(DE_DIR)/*.out
