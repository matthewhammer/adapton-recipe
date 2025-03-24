#!/usr/bin/env bash

set -e

# FORMALISM=formalism.ott
FORMALISM=adapton-recipe.ott

ott \
    -colour false \
    -merge true \
    -show_sort true \
    -show_defns true \
    -tex_wrap true \
    -tex_show_meta false \
    -tex_show_categories false \
    -i $FORMALISM \
    -o formalism.tex > formalism.ott-out

ott \
    -colour false \
    -merge true \
    -tex_wrap false \
    -tex_show_meta false \
    -tex_show_categories false \
    -i $FORMALISM \
    -o formalism-commands.tex > formalism-commands.ott-out

ott \
    -tex_wrap true \
    -i $FORMALISM \
    -tex_filter adapton-recipe.tex adapton-recipe.out.tex > overview.ott-out

# pdflatex formalism.tex || echo Expect manual intervention here, sometimes.

pdflatex adapton-recipe.out.tex
