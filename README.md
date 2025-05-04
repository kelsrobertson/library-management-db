# library-management-db
A relational database system designed to manage core operations of a library, including tracking books, authors, members, loans, and returns. This project demonstrates structured database design using SQL, with a focus on data integrity and real-world applicability in resource management systems.

## Overview
This project models a simple library management system using SQL. It is designed to store and manage information about books, authors, members, loans, and returns. The database supports basic operations such as tracking borrowed books, due dates, and member information.

## Database Schema
The database includes the following main tables:
- **Books**: Contains book titles, genres, and publication information.
- **Authors**: Stores details about authors linked to books.
- **Members**: Tracks library patrons.
- **Loans**: Manages which books are loaned out, by whom, and when.
- **Returns**: Handles return status and dates.
