#!/usr/bin/env bash

set -e

# FORMALISM=formalism.ott
FORMALISM=adapton-recipe.ott

ott \
    -merge true \
    -show_sort true \
    -show_defns true \
    -tex_wrap true \
    -tex_show_meta false \
    -tex_show_categories false \
    -i $FORMALISM \
    -o formalism.tex \

ott \
    -merge true \
    -tex_wrap false \
    -tex_show_meta false \
    -tex_show_categories false \
    -i $FORMALISM \
    -o formalism-commands.tex \

ott \
    -tex_wrap true \
    -i $FORMALISM \
    -tex_filter overview.mng overview.tex

pdflatex formalism.tex || echo Expect manual intervention here, sometimes.

pdflatex overview.tex
