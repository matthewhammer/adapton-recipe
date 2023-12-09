#!/usr/bin/env bash

set -e

ott \
    -merge true \
    -show_sort true \
    -show_defns true \
    -tex_wrap true \
    -tex_show_meta false \
    -tex_show_categories false \
    -i formalism.ott \
    -o formalism.tex \

ott \
    -tex_wrap true \
    -i formalism.ott \
    -tex_filter overview.mng overview.tex

pdflatex formalism.tex || echo Expect manual intervention here, sometimes.

pdflatex overview.tex
