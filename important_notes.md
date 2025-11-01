# Important Notes & Reference Cheatsheet

This file contains crucial information, common gotchas, and reference material for the project.

---

## 💾 SQL Query Execution Order

Understanding the logical processing order of SQL clauses is vital for performance optimization and correct data retrieval, especially when dealing with aggregation and filtering.

### 📝 Typical Written Order (Syntax)

This is the order you write the clauses in your query:

1.  **SELECT**
2.  **FROM**
3.  **JOIN**
4.  **WHERE**
5.  **GROUP BY**
6.  **HAVING**
7.  **ORDER BY**
8.  **LIMIT** / **TOP** (or equivalent)

### ⚙️ Logical Processing Order (Database Execution)

The database processes the query in this mandatory sequence:

| Step | Clause | Purpose in Execution |
| :---: | :--- | :--- |
| **1** | `FROM` | Identifies and loads the source data tables. |
| **2** | `JOIN` | Combines rows from the tables into a single dataset. |
| **3** | `WHERE` | **Filters rows** *before* grouping (filters individual rows). |
| **4** | `GROUP BY` | Creates summary rows based on unique values in specified columns. |
| **5** | `HAVING` | **Filters groups** *after* aggregation (filters summary rows). |
| **6** | `SELECT` | Evaluates expressions, calculates aggregate functions, and projects final columns. |
| **7** | `ORDER BY` | Sorts the final result set. |
| **8** | `LIMIT` | Restricts the total number of rows returned. |

### 🔍 Note on CASE Expressions

The **`CASE`** expression (with `WHEN`, `THEN`, `ELSE`) is **not a clause** but a conditional expression. It is typically evaluated during the **`SELECT`** step (Step 6) to create or transform a column's value.