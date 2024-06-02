BEGIN;

INSERT INTO public."Book" ("ISBN", "Name", "Release_Year", "Print_Year", "Price", "Description", "Size", "Language_ID", "Publisher_ID")
VALUES ('978-3-16-148410-0', 'Example Book', '2020', '2021', 2500, 'An example book description', '8x11', 1, 1);
SELECT * FROM public."Book";
SELECT * FROM public."Author";

SAVEPOINT after_book_insert;

INSERT INTO public."Author" ("First_Name", "Last_Name")
VALUES ('John', 'Doe');
SELECT * FROM public."Author";
ROLLBACK TO SAVEPOINT after_book_insert;
SELECT * FROM public."Author";
SELECT * FROM public."Book";

COMMIT;