UPDATE books SET bookshelf_id=shelf.id FROM (SELECT * FROM bookshelves) AS shelf WHERE 
books.bookshelf = shelf.name;
SELECT bookshelf_id FROM books;