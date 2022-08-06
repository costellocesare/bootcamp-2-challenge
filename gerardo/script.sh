#!/bin/bash
clear

if [[ -z "$1" ]]; then

    mkdir -p gerardo/foo/dummy
    mkdir -p gerardo/foo/empty
    touch gerardo/foo/dummy/file1.txt 
    echo "Que me gusta bash!!!!" > gerardo/foo/dummy/file1.txt
    cp gerardo/foo/dummy/file1.txt gerardo/foo/empty/file2.txt
elif [[ -n "$1" ]]; then
    mkdir -p gerardo/foo/dummy
    mkdir -p gerardo/foo/empty
    touch gerardo/foo/dummy/file1.txt 
    echo $1 > gerardo/foo/dummy/file1.txt
    cp gerardo/foo/dummy/file1.txt gerardo/foo/empty/file2.txt
fi

curl https://es.wikipedia.org/wiki/DevOps | grep $2