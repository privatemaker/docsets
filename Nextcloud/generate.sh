#! /bin/bash

HOME="$(pwd)"
DOCS_PATH="${HOME}/documentation"
DOCS_BUILD="developer_manual/_build/html/com/"
DOCSET="Nextcloud latest Developer Manual.docset"
DOCSET_PATH="${HOME}/${DOCSET}"
DOCSET_PATH_DOCS="${HOME}/$DOCSET/Contents/Resources/Documents/"

if [[ ! -d $DOCS_PATH ]]; then
    echo -e "Cloning nextcloud/documentation"
    git clone https://github.com/nextcloud/documentation --depth 1

else
    echo -e "Repo nextcloud/documentation already exists"
fi

cd $DOCS_PATH/developer_manual/
pwd

if [[ ! -d $DOCS_PATH/$DOCS_BUILD ]]; then
    echo -e "First build .docset with thes commands:\n"
    echo -e "make html"
    echo -e "doc2dash _build/html/com/\n"
    exit 1
else
    echo "Move: ${DOCSET_PATH}"
    mv "${DOCSET}" ../../

    echo -e "Back home to copy assets"
    cd $HOME
    cp assets/* "${DOCSET_PATH}/"
    echo -e "All done"
fi
