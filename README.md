# DevOps 2026

| Session | Topic                     | Lecture                          | Lab                             |
|---------|---------------------------|----------------------------------|---------------------------------|
| 1       | Why DevOps?               | [slides](01-intro/slides.pdf)    |                                 |
| 2       | Version control with Git  | [slides](02-git/slides.pdf)      | [Lab 1](02-git/lab.pdf)         |
| 3       | Collaboration and quality | [slides](03-collab/slides.pdf)   | [Lab 2](03-collab/lab.pdf)      |

## Build

The PDFs are generated from the Org sources with Emacs (Org mode) and pdflatex:

```bash
make            # build everything
make 03-collab  # build one session
make clean      # remove generated files
```
