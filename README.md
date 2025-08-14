# Task 7 – SQL Views in Library Management System

## Overview
This task focuses on creating and querying SQL views in the `khalil_library` database. Views are virtual tables that store the result of predefined queries, making data retrieval easier and more secure.

---

## Views Created
1. **view_books_details** – Displays all books with author and category names.
2. **view_issued_books** – Shows issued books along with member and librarian details.
3. **view_pending_returns** – Lists members who haven’t returned their books yet.
4. **view_books_per_category** – Counts the number of books in each category.

---

## How to Run
1. Open MySQL Workbench or preferred SQL client.
2. Ensure the `khalil_library` database is created and populated from previous tasks.
3. Open `khalil_library_task7.sql`.
4. Run the script to create views.
5. Use `SELECT * FROM view_name;` to fetch results from each view.

---

## Files
- **`khalil_library_task7.sql`** – Contains SQL for creating and querying views.
- **`README.md`** – Documentation.

---

## Benefits of Using Views
- Simplifies complex queries.
- Improves query reusability.
- Provides data abstraction and controlled access.
- Useful for aggregated and filtered reports.

---

**Khalil Abdul Jabbar Shaikh**  
SQL Developer Intern  
14th August 2025
