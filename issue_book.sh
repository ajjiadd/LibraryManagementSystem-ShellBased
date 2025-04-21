#!/bin/bash

isbn=$(dialog --stdout --inputbox "Enter ISBN to issue:" 8 50)
name=$(dialog --stdout --inputbox "Enter name of the person issuing:" 8 50)
days=$(dialog --stdout --inputbox "Enter number of days:" 8 50)
issued_on=$(date +%Y-%m-%d)
return_on=$(date -d "+$days days" +%Y-%m-%d)

echo "$isbn|$name|$issued_on|$return_on" >> issued_books.txt

dialog --msgbox "Book issued to $name, return by $return_on." 7 50
