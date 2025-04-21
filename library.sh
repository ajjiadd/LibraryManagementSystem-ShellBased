#!/bin/bash

while true; do
    choice=$(dialog --clear --backtitle "Library Management System" --title "Main Menu"     --menu "Select an option:" 20 60 10     1 "Add Book"     2 "View Books"     3 "Search Book"     4 "Update Book"     5 "Issue Book"     6 "Return Book"     7 "Report"     8 "Exit"     2>&1 >/dev/tty)

    case $choice in
        1) ./add_book.sh ;;
        2) ./view_books.sh ;;
        3) ./search_book.sh ;;
        4) ./update_book.sh ;;
        5) ./issue_book.sh ;;
        6) ./return_book.sh ;;
        7) ./report.sh ;;
        8) clear && exit 0 ;;
    esac
done
