This repository contains configuration files for LaTeX, templates, sample
documents etc.

You can setup LaTeX on a Docker container, look for the example dockerfile. If
you are on Ubuntu/Debian, there is an installation script:

```console
bash install_latex_in_ubuntu_debian.sh
```

In order to compile LaTeX document:

```console
pdflatex document.tex
```

In some cases (e.g., to use system fonts), we need to run some external
commands:

```console
pdflatex -shell-escape document.tex
```

⚠️ **Warning:**  be careful when using `shell-escape` flag, and make sure you can
trust latex source file and you are not running any malicious command.

An alternative to `pdflatex` is `lualatex` with some additional features:

```console
lualatex document.tex
lualatex -shell-escape document.tex
```
