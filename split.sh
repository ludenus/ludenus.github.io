#!/bin/bash
#set -x
set -e
set -o pipefail

export SRC_DOCX_FILE=${1:?'ERROR: SRC_DOCX_FILE must be specified as 1st command line argument'}

export DST_MD_FILE="${SRC_DOCX_FILE}.md"

export CONTENT_DIR=${CONTENT_DIR:-'./content'}


pandoc --from=docx --to=markdown_strict "${SRC_DOCX_FILE}" > "${DST_MD_FILE}"


# Use awk to split the file into sections based on H1 headers
awk '/^# /{if (out) close(out); out=sprintf("section%02d.md", ++i)}; {if (out) print > out}' "${DST_MD_FILE}"

# Now, each section is in a separate file: section01.md, section02.md, ...
# Loop through these files for processing
export weight=0

for section_file in section*.md; do

    if [ -f "$section_file" ]; then

        echo "Processing $section_file"

        title=`grep -P '^# '  "$section_file" | sed -r 's/# +//' | sed -r 's/ *$//'`

        if grep -P '^## ' "$section_file"; then
          # parse text between h1 and h2 header
          body=`(cat "$section_file" | grep -Pzo '(?s)^# .*?\n##'  | grep -a -v '^#') || true`
        else
            # if there is no h2 header - get all text available after h1 header
          body=`(cat "$section_file" | grep -v '^#') || true`
        fi

        let "weight+=1"
        echo "title='$title'"

        if [ "$title" = "ЗМІСТ" ]; then
           echo "patch TOC..."
           body=`echo "$body" | sed -r 's/ [0-9]+\]/]/g' | sed -r 's/ [0-9]+(\*+\])/\1/g'`
        fi

        mkdir -p "${CONTENT_DIR}/${title}"
        export header=$(cat<<-EOF
+++
archetype = "chapter"
title = "${title}"
weight = ${weight}
showInToc = true
+++

EOF)
        echo "$header" > "${CONTENT_DIR}/${title}/_index.md"
        echo "$body" >> "${CONTENT_DIR}/${title}/_index.md"
        echo "$weight"

        # Use awk to split the file into sections based on H2 headers
        awk '/^## /{if (out) close(out); out=sprintf("sub_section%02d.md", ++i)}; {if (out) print > out}' "$section_file"

        for sub_section_file in sub_section*.md; do
            if [ -f "$sub_section_file" ]; then
                echo "Processing $section_file : $sub_section_file"

                sub_title=`grep -P '^## '  "$sub_section_file" | sed -r 's/## +//' | sed -r 's/ *$//'`
                sub_body=`grep -v "$sub_title"  "$sub_section_file"`
                let "weight+=1"
                mkdir -p "${CONTENT_DIR}/${title}/${sub_title}"
                export sub_header=$(cat<<-EOF
+++
archetype = "chapter"
title = "${sub_title}"
weight = ${weight}
showInToc = true
+++

EOF)
                echo "$sub_header" > "${CONTENT_DIR}/${title}/${sub_title}/_index.md"
                echo "$sub_body" >> "${CONTENT_DIR}/${title}/${sub_title}/_index.md"
                rm "$sub_section_file"  || true
            fi


        done

        rm "$section_file"  || true
      fi
done
echo ok