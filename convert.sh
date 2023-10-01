#!/bin/bash
#set -x
set -e
set -o pipefail

export CONTENT_DIR=${CONTENT_DIR:-'./content'}




function md_sorted_by_weight() {

  ( find ./content/ -name "*.md" -print0 | while read -d $'\0' md; do
        # skip files that does not have weight
        cat  "$md" | grep -E 'weight *='  > /dev/null || continue
        local weight=`cat "$md" | grep -E 'weight *=' | sed -E 's/ +//g' | awk -F= '{print $2}'`
        echo "$weight#####$md"
    done ) | sort | sed -E 's/^[0-9]+#####//'
}


# main =========================================

( md_sorted_by_weight | xargs -I{} /bin/bash -c 'cat "{}"; echo "" ' ) > ./combined.md

ls -pilaF ./combined.md

pandoc ./combined.md --pdf-engine=xelatex --template=template.tex -o ./combined.pdf

pandoc ./combined.md -o ./combined.docx


cd public
ls index.print.html
pandoc index.print.html --pdf-engine=xelatex --template=template.tex -o ../index.print.pdf
pandoc index.print.html -o ../index.print.docs

echo ok