#!/bin/bash

if [[ ! -s issued_books.txt ]]; then
    dialog --msgbox "No books are currently issued." 6 40
else
    {
        echo "Issued Books Report:"
        echo "--------------------------"
        cat issued_books.txt | awk -F'|' '{printf "ISBN: %s\nIssued To: %s\nIssued On: %s\nReturn By: %s\n\n", $1, $2, $3, $4}'
    } > report.txt
    dialog --title "Issued Books Report" --textbox report.txt 20 70
    rm -f report.txt
fi
