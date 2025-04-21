#!/bin/bash

keyword=$(dialog --stdout --inputbox "Enter keyword to search (title/author/ISBN):" 8 60)
grep -i "$keyword" books.txt > search_result.txt

if [[ -s search_result.txt ]]; then
    {
        echo "Search Results:"
        echo "--------------------------"
        cat search_result.txt | awk -F'|' '{printf "Title: %s\nAuthor: %s\nISBN: %s\n\n", $1, $2, $3}'
    } > formatted_search.txt
    dialog --title "Search Results" --textbox formatted_search.txt 20 70
else
    dialog --msgbox "No matching book found!" 6 40
fi

rm -f search_result.txt formatted_search.txt
