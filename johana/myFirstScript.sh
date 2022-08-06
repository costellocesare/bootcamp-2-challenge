#!/bin/bash


if [[ -z "$1" ]]; then
    mkdir -p johana/foo/dummy   
    mkdir -p johana/foo/empty
    touch johana/foo/dummy/file1.txt
    touch johana/foo/dummy/file2.txt 
    echo "Me encanta bash !!" > johana/foo/dummy/file1.txt
    mv johana/foo/dummy/file2.txt johana/foo/empty/ 
    cat johana/foo/dummy/file1.txt > johana/foo/empty/file2.txt
elif [[ -n "$1" ]]; then
    mkdir -p foo/empty
    mkdir -p johana/foo/dummy
    mkdir -p johana/foo/empty
    touch johana/foo/dummy/file1.txt 
    echo "$1" > johana/foo/dummy/file1.txt
    mv johana/foo/dummy/file2.txt johana/foo/empty/ 
    cat johana/foo/dummy/file1.txt > johana/foo/empty/file2.txt
fi

curl https://es.wikipedia.org/wiki/DevOps | grep $2