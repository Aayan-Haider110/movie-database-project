# 🎬 Movie Database Project

A beginner-friendly PostgreSQL project featuring a single `movies` table. This project is designed to demonstrate basic SQL skills like table creation, data insertion, and SELECT queries.

---

## 📂 Table Structure

### 🎥 `movies`

| Column         | Type         | Description        |
|----------------|--------------|--------------------|
| `id`           | SERIAL (PK)  | Unique movie ID    |
| `title`        | VARCHAR(100) | Movie title        |
| `director`     | VARCHAR(100) | Director name      |
| `release_year` | INT          | Year of release    |

---

## 🛠️ Tech Stack

- PostgreSQL
- pgAdmin 4

---

## 📊 Sample SQL Query

```sql
SELECT title, director, release_year
FROM movies
WHERE release_year >= 2000
ORDER BY release_year DESC;
