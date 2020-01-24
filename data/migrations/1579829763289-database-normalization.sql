CREATE TABLE BOOKSHELVES (id SERIAL PRIMARY KEY, name VARCHAR(255));
\d bookshelves

INSERT INTO bookshelves(name) SELECT DISTINCT bookshelf FROM books;
SELECT COUNT(*) FROM bookshelves;

ALTER TABLE books ADD COLUMN bookshelf_id INT;
\d books

UPDATE books SET bookshelf_id=shelf.id FROM (SELECT * FROM bookshelves) AS shelf WHERE 
books.bookshelf = shelf.name;
SELECT bookshelf_id FROM books;

ALTER TABLE books DROP COLUMN bookshelf;
\d books

ALTER TABLE books ADD CONSTRAINT fk_bookshelves FOREIGN KEY (bookshelf_id) REFERENCES bookshelves(id);
\d books