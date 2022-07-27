#!/usr/bin/env bash

clitool="asciidoctor-revealjs"
version=4.1.0
cmd="$clitool presentation.adoc"

if ! $clitool --version | grep $version > /dev/null; then
    echo "$clitool $version not installed"
    echo "running build via docker..."
    docker run --rm -v "$PWD:/src" -w "/src" asciidoctor/docker-asciidoctor:1.6.0 $cmd
else
    echo "$clitool $version installed!"
    echo "running build..."
    $cmd
fi

if [ ! -r ./public ]; then
    mkdir public
fi

mv -f presentation.html public/index.html
cp -r reveal.js/ public/
