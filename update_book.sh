#!/bin/bash

isbn=$(dialog --stdout --inputbox "Enter ISBN of the book to update:" 8 50)
line=$(grep -n "$isbn" books.txt | cut -d: -f1)

if [[ -z "$line" ]]; then
    dialog --msgbox "Book not found!" 6 40
else
    title=$(dialog --stdout --inputbox "Enter new title:" 8 50)
    author=$(dialog --stdout --inputbox "Enter new author:" 8 50)
    sed -i "${line}s/.*/$title|$author|$isbn/" books.txt
    dialog --msgbox "Book updated successfully!" 6 40
fi
