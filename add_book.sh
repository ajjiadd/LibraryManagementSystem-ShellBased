#!/bin/bash

title=$(dialog --stdout --inputbox "Enter Book Title:" 8 50)
author=$(dialog --stdout --inputbox "Enter Author Name:" 8 50)
isbn=$(dialog --stdout --inputbox "Enter ISBN Number:" 8 50)

echo "$title|$author|$isbn" >> books.txt

dialog --msgbox "Book added successfully!" 6 40
