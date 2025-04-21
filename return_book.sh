#!/bin/bash

isbn=$(dialog --stdout --inputbox "Enter ISBN to return:" 8 50)
name=$(dialog --stdout --inputbox "Enter issuer name:" 8 50)
sed -i "/$isbn|$name/d" issued_books.txt

dialog --msgbox "Book returned successfully!" 6 40
