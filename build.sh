#!/usr/bin/env bash

docker run --rm -v "$PWD:/src" -w "/src" asciidoctor/docker-asciidoctor:1.6.0 asciidoctor-revealjs presentation.adoc

if [ ! -r ./public ]; then
    mkdir public
fi

mv -f presentation.html public/index.html
cp -r reveal.js/ public/
