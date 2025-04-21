# Library Management System (Shell-Based)

This is a simple Library Management System implemented using Bash scripting. It provides a command-line interface for managing books in a library, including adding, viewing, searching, updating, issuing, and returning books. The system also generates reports for issued books.

## Features

1. **Add Book**: Add a new book to the library with details like title, author, and ISBN.
2. **View Books**: Display a list of all available books in the library.
3. **Search Book**: Search for books by title, author, or ISBN.
4. **Update Book**: Update the details of an existing book.
5. **Issue Book**: Issue a book to a user with a return date.
6. **Return Book**: Mark a book as returned by the user.
7. **Report**: Generate a report of all currently issued books.
8. **Exit**: Exit the system.

## File Structure

- `library.sh`: Main script that serves as the entry point and menu for the system.
- `add_book.sh`: Script to add a new book to the library.
- `view_books.sh`: Script to view all books in the library.
- `search_book.sh`: Script to search for books based on keywords.
- `update_book.sh`: Script to update book details.
- `issue_book.sh`: Script to issue a book to a user.
- `return_book.sh`: Script to return a book.
- `report.sh`: Script to generate a report of issued books.
- `books.txt`: File to store book details.
- `issued_books.txt`: File to store issued book records.

## Prerequisites

- Bash shell
- `dialog` utility for creating interactive menus

## How to Run

1. Ensure you have Bash and the `dialog` utility installed on your system.
2. Clone or download this project to your local machine.
3. Run the main script:
   ```bash
   ./library.sh
   ```

## Notes

- All book details are stored in `books.txt` in the format `Title|Author|ISBN`.
- Issued book records are stored in `issued_books.txt` in the format `ISBN|Name|Issued On|Return By`.
- Ensure proper permissions are set for the scripts to execute.

## License

This project is open-source and free to use. You are free to modify and distribute it as per your requirements.