# DevOps 2026

| Session | Topic                     | Lecture                          | Lab                             |
|---------|---------------------------|----------------------------------|---------------------------------|
| 1       | Why DevOps?               | [slides](01-intro/slides.pdf)    |                                 |
| 2       | Version control with Git  | [slides](02-git/slides.pdf)      | [Lab 1](02-git/lab.pdf)         |
| 3       | Collaboration and quality | [slides](03-collab/slides.pdf)   | [Lab 2](03-collab/lab.pdf)      |
| 4       | Continuous integration    | [slides](04-ci/slides.pdf)       | [Lab 3](04-ci/lab.pdf)          |
| 5       | Continuous delivery       | [slides](05-cd/slides.pdf)       | [Lab 4](05-cd/lab.pdf)          |
| 6       | Containers with Docker    | [slides](06-docker/slides.pdf)   | [Lab 5](06-docker/lab.pdf)      |

## Build

The PDFs are generated from the Org sources with Emacs (Org mode) and pdflatex:

```bash
make            # build everything
make 03-collab  # build one session
make clean      # remove generated files
```
