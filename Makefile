# Build all PDFs of the DevOps course from the Org sources.
#   make            build everything
#   make 01-intro   build one session
#   make clean      remove generated files

EMACS  := emacs --batch -Q -l common/export.el
SETUP  := common/export.el common/slides.setup common/doc.setup

SLIDES := $(wildcard */slides.org)
DOCS   := $(wildcard */teacher-notes.org */lab.org */lab-questions.org */lab-answers.org)
PDFS   := $(SLIDES:.org=.pdf) $(DOCS:.org=.pdf)

.PHONY: all clean $(patsubst %/,%,$(sort $(dir $(PDFS))))

all: $(PDFS)

# One target per session folder, e.g. "make 01-intro".
$(patsubst %/,%,$(sort $(dir $(PDFS)))):
	$(MAKE) $(filter $@/%,$(PDFS))

%/slides.pdf: %/slides.org $(SETUP)
	$(EMACS) $< -f devops-export-beamer

%/teacher-notes.pdf: %/teacher-notes.org $(SETUP)
	$(EMACS) $< -f devops-export-article

%/lab.pdf: %/lab.org $(SETUP)
	$(EMACS) $< -f devops-export-article

%/lab-questions.pdf: %/lab-questions.org $(SETUP)
	$(EMACS) $< -f devops-export-article

%/lab-answers.pdf: %/lab-answers.org $(SETUP)
	$(EMACS) $< -f devops-export-article

clean:
	rm -f */*.pdf */*.tex */*.log */*.aux */*.nav */*.out */*.snm */*.toc */*.vrb */*~
