#!/bin/bash

if [[ ! -s books.txt ]]; then
    dialog --msgbox "No books available." 6 40
else
    {
        echo "Title | Author | ISBN"
        echo "--------------------------"
        cat books.txt | awk -F'|' '{printf "%s | %s | %s\n", $1, $2, $3}'
    } > temp_books.txt
    dialog --title "Book List" --textbox temp_books.txt 20 70
    rm -f temp_books.txt
fi
