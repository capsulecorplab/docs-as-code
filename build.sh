#!/usr/bin/env bash

docker run --rm --volume $PWD:/src -w "/src" capsulecorplab/asciidoctor-extended:revealjs 'bundle exec asciidoctor-revealjs -a revealjsdir=https://cdn.jsdelivr.net/npm/reveal.js@3.9.2 presentation.adoc -o public/index.html'
