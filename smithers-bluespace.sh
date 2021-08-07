#!/bin/sh -e

cd programs
wget https://cpjsmith.uk/downloads/whitespace/99.wsp
wget https://cpjsmith.uk/downloads/whitespace/quine-cs.ws
wget https://cpjsmith.uk/downloads/whitespace/quine-cs.wsa
wget https://cpjsmith.uk/downloads/whitespace/quine-cs-3.ws
wget https://cpjsmith.uk/downloads/whitespace/quine-cs-3.wsa
wget https://cpjsmith.uk/whitespace -O index.html

# Last-Modified in UTC       Last-Modified in BST
# 2014-07-10 18:59:10 +0000  2014-07-10 19:59:10 +0100  quine-cs.ws
# 2014-07-12 21:21:29 +0000  2014-07-12 22:21:29 +0100  99.wsp
# 2014-07-25 17:55:00 +0000  2014-07-25 18:55:00 +0100  quine-cs.wsa
# 2015-06-28 12:34:40 +0000  2015-06-28 13:34:40 +0100  quine-cs-3.ws
# 2015-06-28 12:35:26 +0000  2015-06-28 13:35:26 +0100  quine-cs-3.wsa

# Commits are in GMT/BST

git add 99.wsp quine-cs.ws quine-cs.wsa quine-cs-3.ws quine-cs-3.wsa

GIT_AUTHOR_NAME='Chris Smith' \
GIT_AUTHOR_EMAIL='chrissmithers888@gmail.com' \
GIT_AUTHOR_DATE='2015-06-28 13:35:26 +0100' \
git commit -m 'Add programs from website'
