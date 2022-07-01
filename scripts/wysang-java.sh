#!/bin/bash -e

. base.sh

copy_submodule wysang-java
cd wysang-java

# Remove commit that adds 8.6MiB "Pragmatic.The Definitive ANTLR 4 Reference.2013.pdf"
git reset -q --hard HEAD~

git rm -q '*.class' WSLexer.java WSLexer.tokens
git commit -q -m 'Remove .class files and old generated lexer'

git branch -m master main
git remote set-url origin https://github.com/wspace/wysang
