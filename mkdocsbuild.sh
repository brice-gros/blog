#! /usr/bin/env bash

set -e
2>/dev/null 1>&2 ENABLE_MKDOCS_PDF_EXPORT=1 mkdocs build --theme mkdocs --site-dir /tmp/mkdocs-pdf-export/
mv /tmp/mkdocs-pdf-export/pdf/combined.pdf ./docs/combined.pdf
rm -fr /tmp/mkdocs-pdf-export/
mkdocs build
echo "DONE"
set +e
