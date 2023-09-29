#! /bin/bash

HOME="$(pwd)"
DOCS_PATH="${HOME}/hugoDocs"
DOCS_BUILD="public"
DOCSET_PATH="${HOME}/docset"
DOCSET_PATH_DOCS="${HOME}/docset/Contents/Resources/Documents/gohugo.io/"
DOCSET_DB="${HOME}/docset/Contents/Resources/docSet.dsidx"

if [[ ! -d $DOCS_PATH ]]; then
    echo -e "Cloning hugoDocs"
    git clone https://github.com/gohugoio/hugoDocs --depth 1

	  cp patches/baseof.html $DOCS_PATH/_vendor/github.com/gohugoio/gohugoioTheme/layouts/_default/
	  cp patches/pagelayout.html $DOCS_PATH/_vendor/github.com/gohugoio/gohugoioTheme/layouts/partials/
	  cp -r patches/docset $DOCS_PATH/config/
else
    echo -e "hugoDocs exists already"
fi

cd $DOCS_PATH
echo -e "Building docs to: $DOCS_PATH/$DOCS_BUILD"
hugo --baseURL "/hugo/gohugo.io/"
sleep 2

cd $HOME
mkdir -p $DOCSET_PATH_DOCS
rm -rf $DOCSET_PATH_DOCS/*

cd $DOCSET_PATH
echo -e "Back in $(pwd)"
echo "Copy: $DOCS_PATH/$DOCS_BUILD/"
cp -r $DOCS_PATH/$DOCS_BUILD/* $DOCSET_PATH_DOCS

echo -e "Nuke + build the Sqlite DB"
if [[ -f $DOCSET_DB ]]; then
    rm $DOCSET_DB
fi

sqlite3 $DOCSET_DB < $HOME/db-hugo.sql
