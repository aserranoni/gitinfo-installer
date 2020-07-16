#!/usr/bin/env bash

if [ $# -eq 0 ]; then
    printf "Welcome to gitinfo installer!\n"
    printf "Usage : gitinfo-installer [1st folder] ... [n-th folder]\n"
else
    for arg in "$@"; do
        if [ ! -d "$arg/.git" ]; then
            echo "Folder $arg is not a git repository. Skipping...."
        else
            cp "/usr/share/texlive/texmf-dist/doc/latex/gitinfo2/post-xxx-sample.txt" "$arg/.git/hooks/post-checkout"
            cp "/usr/share/texlive/texmf-dist/doc/latex/gitinfo2/post-xxx-sample.txt" "$arg/.git/hooks/post-commit"
            cp "/usr/share/texlive/texmf-dist/doc/latex/gitinfo2/post-xxx-sample.txt" "$arg/.git/hooks/post-merge"
            echo  "Gitinfo successfully installed on $arg"
        fi
    done
fi


