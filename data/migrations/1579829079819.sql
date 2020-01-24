INSERT INTO bookshelves(name) SELECT DISTINCT bookshelf FROM books;
SELECT COUNT(*) FROM bookshelves;