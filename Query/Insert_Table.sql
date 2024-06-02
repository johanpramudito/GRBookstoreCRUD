BEGIN;

-- Insert into Country
INSERT INTO public."Country" ("Country")
VALUES 
('United States'),
('Canada'),
('United Kingdom'),
('Australia'),
('Germany'),
('France'),
('Italy'),
('Spain'),
('Mexico'),
('Brazil'),
('India'),
('China'),
('Japan'),
('South Korea'),
('Russia'),
('South Africa'),
('Nigeria'),
('Egypt'),
('Argentina'),
('Colombia'),
('Malaysia');


-- Insert into City
INSERT INTO public."City" ("City", "Country_ID")
VALUES
('New York', 1),
('Los Angeles', 1),
('Toronto', 2),
('Vancouver', 2),
('London', 3),
('Manchester', 3),
('Sydney', 4),
('Melbourne', 4),
('Berlin', 5),
('Munich', 5),
('Paris', 6),
('Marseille', 6),
('Rome', 7),
('Milan', 7),
('Madrid', 8),
('Barcelona', 8),
('Mexico City', 9),
('São Paulo', 10),
('Mumbai', 11),
('Beijing', 12),
('Tokyo', 13);


-- Insert into Address (42 rows)
INSERT INTO public."Address" ("Address", "City_ID", "Postal_Code", "Phone")
VALUES
('123 Main St', 1, '10001', '123-456-7890'),
('456 Elm St', 1, '10002', '123-456-7891'),
('789 Oak St', 2, '90001', '123-456-7892'),
('101 Pine St', 2, '90002', '123-456-7893'),
('102 Maple St', 3, 'M5H 2N2', '123-456-7894'),
('103 Cedar St', 3, 'M5H 2N3', '123-456-7895'),
('104 Birch St', 4, 'V6B 3K9', '123-456-7896'),
('105 Spruce St', 4, 'V6B 3L0', '123-456-7897'),
('106 Ash St', 5, 'EC2N 2DB', '123-456-7898'),
('107 Walnut St', 5, 'EC2N 2DC', '123-456-7899'),
('108 Cherry St', 6, 'M15 4RQ', '123-456-7800'),
('109 Chestnut St', 6, 'M15 4RR', '123-456-7801'),
('110 Redwood St', 7, '2000', '123-456-7802'),
('111 Cypress St', 7, '2001', '123-456-7803'),
('112 Palm St', 8, '3000', '123-456-7804'),
('113 Fir St', 8, '3001', '123-456-7805'),
('114 Poplar St', 9, '10115', '123-456-7806'),
('115 Willow St', 9, '10116', '123-456-7807'),
('116 Pineapple St', 10, '80331', '123-456-7808'),
('117 Mango St', 10, '80332', '123-456-7809'),
('118 Peach St', 11, '75001', '123-456-7810'),
('119 Pear St', 11, '75002', '123-456-7811'),
('120 Grape St', 12, '13001', '123-456-7812'),
('121 Berry St', 12, '13002', '123-456-7813'),
('122 Melon St', 13, '00100', '123-456-7814'),
('123 Banana St', 13, '00101', '123-456-7815'),
('124 Orange St', 14, '20100', '123-456-7816'),
('125 Lemon St', 14, '20101', '123-456-7817'),
('126 Lime St', 15, '28001', '123-456-7818'),
('127 Apple St', 15, '28002', '123-456-7819'),
('128 Kiwi St', 16, '08001', '123-456-7820'),
('129 Avocado St', 16, '08002', '123-456-7821'),
('130 Plum St', 17, '01000', '123-456-7822'),
('131 Coconut St', 17, '01001', '123-456-7823'),
('132 Nectarine St', 18, '01310', '123-456-7824'),
('133 Cranberry St', 18, '01311', '123-456-7825'),
('134 Fig St', 19, '40001', '123-456-7826'),
('135 Date St', 19, '40002', '123-456-7827'),
('136 Guava St', 20, '100001', '123-456-7828'),
('137 Papaya St', 20, '100002', '123-456-7829'),
('138 Pomegranate St', 21, '100-0001', '123-456-7830'),
('139 Persimmon St', 21, '100-0002', '123-456-7831');


-- Insert into Publisher
INSERT INTO public."Publisher" ("Name", "City_ID")
VALUES
('Penguin Random House', 1),
('HarperCollins', 2),
('Simon & Schuster', 3),
('Hachette Livre', 4),
('Macmillan Publishers', 5),
('Scholastic', 6),
('Pearson', 7),
('Wiley', 8),
('Oxford University Press', 9),
('Cambridge University Press', 10),
('Springer Nature', 11),
('Cengage', 12),
('McGraw-Hill', 13),
('Elsevier', 14),
('Houghton Mifflin Harcourt', 15),
('W.W. Norton & Company', 16),
('Bloomsbury Publishing', 17),
('SAGE Publications', 18),
('Routledge', 19),
('Palgrave Macmillan', 20),
('Faber and Faber', 21);


-- Insert into Language
INSERT INTO public."Language" ("Name")
VALUES
('English'),
('French'),
('Spanish'),
('German'),
('Chinese'),
('Japanese'),
('Russian'),
('Portuguese'),
('Hindi'),
('Arabic'),
('Bengali'),
('Punjabi'),
('Javanese'),
('Korean'),
('Vietnamese'),
('Tamil'),
('Italian'),
('Turkish'),
('Dutch'),
('Greek'),
('Swedish');


-- Insert into Author
INSERT INTO public."Author" ("First_Name", "Last_Name")
VALUES
('Stephen', 'King'),
('J.K.', 'Rowling'),
('George', 'Orwell'),
('J.R.R.', 'Tolkien'),
('Mark', 'Twain'),
('Jane', 'Austen'),
('Charles', 'Dickens'),
('Ernest', 'Hemingway'),
('F. Scott', 'Fitzgerald'),
('Agatha', 'Christie'),
('Leo', 'Tolstoy'),
('Fyodor', 'Dostoevsky'),
('Gabriel', 'Garcia Marquez'),
('Haruki', 'Murakami'),
('Isabel', 'Allende'),
('Mario', 'Vargas Llosa'),
('Paulo', 'Coelho'),
('Chinua', 'Achebe'),
('Kazuo', 'Ishiguro'),
('Margaret', 'Atwood'),
('Alice', 'Munro');


-- Insert into Category
INSERT INTO public."Category" ("Name")
VALUES
('Fiction'),
('Non-Fiction'),
('Science Fiction'),
('Fantasy'),
('Mystery'),
('Biography'),
('History'),
('Romance'),
('Thriller'),
('Young Adult'),
('Children'),
('Horror'),
('Self-Help'),
('Philosophy'),
('Health'),
('Cooking'),
('Travel'),
('Science'),
('Poetry'),
('Art'),
('Graphic Novel');


-- Insert into Book (21 unique entries)
INSERT INTO public."Book" ("ISBN", "Name", "Release_Year", "Print_Year", "Price", "Description", "Size", "Language_ID", "Publisher_ID")
VALUES
('978-0451524935', '1984', '1949', '2022', 1500, 'A dystopian novel', 'Medium', 1, 3),
('978-0439554930', 'Harry Potter and the Philosopher''s Stone', '1997', '2018', 2000, 'A young wizards journey', 'Medium', 1, 2),
('978-0345339706', 'The Hobbit', '1937', '2012', 1800, 'A fantasy adventure', 'Medium', 1, 4),
('978-0743273565', 'The Great Gatsby', '1925', '2021', 1300, 'A story of the Jazz Age', 'Medium', 1, 9),
('978-1501121967', 'It', '1986', '2017', 1600, 'A horror novel', 'Medium', 1, 1),
('978-0141441146', 'Pride and Prejudice', '1813', '2014', 1200, 'A classic romance', 'Medium', 1, 6),
('978-1503280786', 'Moby-Dick', '1851', '2020', 1400, 'A sea adventure', 'Medium', 1, 7),
('978-0140283334', 'One Hundred Years of Solitude', '1967', '2020', 1700, 'A magical realism novel', 'Medium', 1, 13),
('978-0385353304', 'Norwegian Wood', '1987', '2015', 1500, 'A poignant love story', 'Medium', 1, 14),
('978-0679720201', 'Beloved', '1987', '2004', 1300, 'A novel about slavery', 'Medium', 1, 16),
('978-0061122415', 'The Alchemist', '1988', '2015', 1400, 'A philosophical novel', 'Medium', 8, 17),
('978-0141036137', 'Brave New World', '1932', '2014', 1500, 'A dystopian novel', 'Medium', 1, 5),
('978-0451208637', 'The Shining', '1977', '2012', 1600, 'A horror novel', 'Medium', 1, 1),
('978-0679444189', 'War and Peace', '1869', '2008', 2000, 'A historical novel', 'Medium', 7, 11),
('978-0486284736', 'Crime and Punishment', '1866', '2000', 1500, 'A psychological novel', 'Medium', 7, 12),
('978-0060531041', 'A Farewell to Arms', '1929', '2003', 1400, 'A war novel', 'Medium', 1, 8),
('978-0143106479', 'Don Quixote', '1605', '2003', 1600, 'A classic novel', 'Medium', 3, 15),
('978-1400033416', 'Things Fall Apart', '1958', '1994', 1400, 'A post-colonial novel', 'Medium', 1, 18),
('978-0525562457', 'Klara and the Sun', '2021', '2021', 1800, 'A speculative fiction novel', 'Medium', 1, 19),
('978-1443452949', 'The Testaments', '2019', '2019', 1700, 'A dystopian novel', 'Medium', 1, 20),
('978-0525501234', 'Dear Life', '2012', '2012', 1500, 'A collection of short stories', 'Medium', 1, 21);


-- Insert into Customer
INSERT INTO public."Customer" ("First_Name", "Last_Name", "Email", "Create_Date", "Address_ID", "Username", "Password")
VALUES
('John', 'Doe', 'john.doe@example.com', '2023-01-01 00:00:00+00', 1, 'johndoe', 'password123'),
('Jane', 'Smith', 'jane.smith@example.com', '2023-01-02 00:00:00+00', 2, 'janesmith', 'password123'),
('Robert', 'Brown', 'robert.brown@example.com', '2023-01-03 00:00:00+00', 3, 'robertbrown', 'password123'),
('Emily', 'Davis', 'emily.davis@example.com', '2023-01-04 00:00:00+00', 4, 'emilydavis', 'password123'),
('Michael', 'Johnson', 'michael.johnson@example.com', '2023-01-05 00:00:00+00', 5, 'michaeljohnson', 'password123'),
('Sarah', 'Miller', 'sarah.miller@example.com', '2023-01-06 00:00:00+00', 6, 'sarahmiller', 'password123'),
('David', 'Wilson', 'david.wilson@example.com', '2023-01-07 00:00:00+00', 7, 'davidwilson', 'password123'),
('Laura', 'Moore', 'laura.moore@example.com', '2023-01-08 00:00:00+00', 8, 'lauramoore', 'password123'),
('Daniel', 'Taylor', 'daniel.taylor@example.com', '2023-01-09 00:00:00+00', 9, 'danieltaylor', 'password123'),
('Jessica', 'Anderson', 'jessica.anderson@example.com', '2023-01-10 00:00:00+00', 10, 'jessicaanderson', 'password123'),
('James', 'Thomas', 'james.thomas@example.com', '2023-01-11 00:00:00+00', 11, 'jamesthomas', 'password123'),
('Ashley', 'Jackson', 'ashley.jackson@example.com', '2023-01-12 00:00:00+00', 12, 'ashleyjackson', 'password123'),
('Joshua', 'White', 'joshua.white@example.com', '2023-01-13 00:00:00+00', 13, 'joshuawhite', 'password123'),
('Amanda', 'Harris', 'amanda.harris@example.com', '2023-01-14 00:00:00+00', 14, 'amandaharris', 'password123'),
('Andrew', 'Martin', 'andrew.martin@example.com', '2023-01-15 00:00:00+00', 15, 'andrewmartin', 'password123'),
('Megan', 'Thompson', 'megan.thompson@example.com', '2023-01-16 00:00:00+00', 16, 'meganthompson', 'password123'),
('Christopher', 'Garcia', 'christopher.garcia@example.com', '2023-01-17 00:00:00+00', 17, 'christophergarcia', 'password123'),
('Heather', 'Martinez', 'heather.martinez@example.com', '2023-01-18 00:00:00+00', 18, 'heathermartinez', 'password123'),
('Matthew', 'Robinson', 'matthew.robinson@example.com', '2023-01-19 00:00:00+00', 19, 'matthewrobinson', 'password123'),
('Elizabeth', 'Clark', 'elizabeth.clark@example.com', '2023-01-20 00:00:00+00', 20, 'elizabethclark', 'password123'),
('Joshua', 'Rodriguez', 'joshua.rodriguez@example.com', '2023-01-21 00:00:00+00', 21, 'joshuarodriguez', 'password123');


-- Insert into Store
INSERT INTO public."Store" ("Name")
VALUES
('Downtown Bookstore'),
('Uptown Bookstore'),
('Suburban Bookstore'),
('City Center Bookstore'),
('Mall Bookstore'),
('Neighborhood Bookstore'),
('University Bookstore'),
('Airport Bookstore'),
('Train Station Bookstore'),
('Library Bookstore'),
('Book Cafe'),
('Book Lounge'),
('Book Nook'),
('Book Haven'),
('Book Palace'),
('Book World'),
('Book Spot'),
('Book Depot'),
('Book Hub'),
('Book Stop'),
('Book Haven');


-- Insert into Inventory
INSERT INTO public."Inventory" ("Book_ID", "Store_ID", "Book_Amount")
VALUES
(1, 1, 5),
(2, 1, 3),
(3, 1, 4),
(4, 1, 6),
(5, 1, 2),
(6, 2, 7),
(7, 2, 5),
(8, 2, 3),
(9, 2, 8),
(10, 2, 4),
(11, 3, 6),
(12, 3, 2),
(13, 3, 5),
(14, 3, 7),
(15, 3, 3),
(16, 4, 8),
(17, 4, 5),
(18, 4, 4),
(19, 4, 6),
(20, 4, 3),
(21, 4, 7);


-- Insert into Wishlist
INSERT INTO public."Wishlist" ("Book_ID", "Customer_ID")
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21);


-- Insert into Rating
INSERT INTO public."Rating" ("Book_ID", "Customer_ID", "Rating", "Rating_Date")
VALUES
(1, 1, 4.5, '2023-06-01 00:00:00+00'),
(2, 2, 4.0, '2023-06-02 00:00:00+00'),
(3, 3, 5.0, '2023-06-03 00:00:00+00'),
(4, 4, 3.5, '2023-06-04 00:00:00+00'),
(5, 5, 4.0, '2023-06-05 00:00:00+00'),
(6, 6, 4.5, '2023-06-06 00:00:00+00'),
(7, 7, 4.0, '2023-06-07 00:00:00+00'),
(8, 8, 5.0, '2023-06-08 00:00:00+00'),
(9, 9, 3.5, '2023-06-09 00:00:00+00'),
(10, 10, 4.0, '2023-06-10 00:00:00+00'),
(11, 11, 4.5, '2023-06-11 00:00:00+00'),
(12, 12, 4.0, '2023-06-12 00:00:00+00'),
(13, 13, 5.0, '2023-06-13 00:00:00+00'),
(14, 14, 3.5, '2023-06-14 00:00:00+00'),
(15, 15, 4.0, '2023-06-15 00:00:00+00'),
(16, 16, 4.5, '2023-06-16 00:00:00+00'),
(17, 17, 4.0, '2023-06-17 00:00:00+00'),
(18, 18, 5.0, '2023-06-18 00:00:00+00'),
(19, 19, 3.5, '2023-06-19 00:00:00+00'),
(20, 20, 4.0, '2023-06-20 00:00:00+00'),
(21, 21, 4.5, '2023-06-21 00:00:00+00');


-- Insert into Review
INSERT INTO public."Review" ("Book_ID", "Customer_ID", "Review_Text", "Review_Date")
VALUES
(1, 1, 'Amazing book!', '2023-07-01 00:00:00+00'),
(2, 2, 'Very interesting.', '2023-07-02 00:00:00+00'),
(3, 3, 'Loved it!', '2023-07-03 00:00:00+00'),
(4, 4, 'Great read.', '2023-07-04 00:00:00+00'),
(5, 5, 'Highly recommended.', '2023-07-05 00:00:00+00'),
(6, 6, 'Couldnt put it down.', '2023-07-06 00:00:00+00'),
(7, 7, 'Well written.', '2023-07-07 00:00:00+00'),
(8, 8, 'A classic.', '2023-07-08 00:00:00+00'),
(9, 9, 'Thought-provoking.', '2023-07-09 00:00:00+00'),
(10, 10, 'A must-read.', '2023-07-10 00:00:00+00'),
(11, 11, 'Excellent.', '2023-07-11 00:00:00+00'),
(12, 12, 'Fantastic.', '2023-07-12 00:00:00+00'),
(13, 13, 'Beautifully written.', '2023-07-13 00:00:00+00'),
(14, 14, 'Engaging.', '2023-07-14 00:00:00+00'),
(15, 15, 'Informative.', '2023-07-15 00:00:00+00'),
(16, 16, 'Entertaining.', '2023-07-16 00:00:00+00'),
(17, 17, 'Absorbing.', '2023-07-17 00:00:00+00'),
(18, 18, 'Compelling.', '2023-07-18 00:00:00+00'),
(19, 19, 'Enlightening.', '2023-07-19 00:00:00+00'),
(20, 20, 'Outstanding.', '2023-07-20 00:00:00+00'),
(21, 21, 'Captivating.', '2023-07-21 00:00:00+00');


-- Insert into Book_Author
INSERT INTO public."Book_Author" ("Book_ID", "Author_ID")
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21);


-- Insert into Discounts
INSERT INTO public."Discounts" ("Name", "Value")
VALUES
('5% Off', 5),
('10% Off', 10),
('15% Off', 15),
('20% Off', 20),
('25% Off', 25),
('30% Off', 30),
('35% Off', 35),
('40% Off', 40),
('45% Off', 45),
('50% Off', 50),
('55% Off', 55),
('60% Off', 60),
('65% Off', 65),
('70% Off', 70),
('75% Off', 75),
('80% Off', 80),
('85% Off', 85),
('90% Off', 90),
('95% Off', 95),
('Free Shipping', 0),
('Buy One Get One Free', 100);




-- Insert into Book_Discounts
INSERT INTO public."Book_Discounts" ("Book_ID", "Discounts_ID")
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21);


INSERT INTO public."Book_Category" ("Book_ID", "Category_ID")
VALUES
(1, 1),
(2, 1),
(3, 4),
(4, 6),
(5, 11),
(6, 7),
(7, 4),
(8, 13),
(9, 14),
(10, 17),
(11, 1),
(12, 11),
(13, 6),
(14, 7),
(15, 14),
(16, 11),
(17, 6),
(18, 7),
(19, 14),
(20, 17),
(21, 1);


-- Insert into Order
INSERT INTO public."Order" ("Inventory_ID", "Customer_ID", "Discounts_ID", "Order_Date", "Order_Amount")
VALUES
(1, 1, 1, '2023-05-01 00:00:00+00', 2),
(2, 2, 2, '2023-05-02 00:00:00+00', 1),
(3, 3, 3, '2023-05-03 00:00:00+00', 1),
(4, 4, 4, '2023-05-04 00:00:00+00', 4),
(5, 5, 5, '2023-05-05 00:00:00+00', 6),
(6, 6, 6, '2023-05-06 00:00:00+00', 1),
(7, 7, 7, '2023-05-07 00:00:00+00', 1),
(8, 8, 8, '2023-05-08 00:00:00+00', 2),
(9, 9, 9, '2023-05-09 00:00:00+00', 2),
(10, 10, 10, '2023-05-10 00:00:00+00', 1),
(11, 11, 11, '2023-05-11 00:00:00+00', 1),
(12, 12, 12, '2023-05-12 00:00:00+00', 2),
(13, 13, 13, '2023-05-13 00:00:00+00', 3),
(14, 14, 14, '2023-05-14 00:00:00+00', 2),
(15, 15, 15, '2023-05-15 00:00:00+00', 3),
(16, 16, 16, '2023-05-16 00:00:00+00', 2),
(17, 17, 17, '2023-05-17 00:00:00+00', 2),
(18, 18, 18, '2023-05-18 00:00:00+00', 2),
(19, 19, 19, '2023-05-19 00:00:00+00', 2),
(20, 20, 20, '2023-05-20 00:00:00+00', 1),
(21, 2, 21, '2023-05-21 00:00:00+00', 1);


INSERT INTO public."Staff" ("First_Name", "Last_Name", "Store_ID", "Address_ID")
VALUES
('John', 'Doe', 1, 1),
('Jane', 'Smith', 2, 2),
('Robert', 'Brown', 3, 3),
('Emily', 'Davis', 4, 4),
('Michael', 'Johnson', 5, 5),
('Sarah', 'Miller', 6, 6),
('David', 'Wilson', 7, 7),
('Laura', 'Moore', 8, 8),
('Daniel', 'Taylor', 9, 9),
('Jessica', 'Anderson', 10, 10),
('James', 'Thomas', 11, 11),
('Ashley', 'Jackson', 12, 12),
('Joshua', 'White', 13, 13),
('Amanda', 'Harris', 14, 14),
('Andrew', 'Martin', 15, 15),
('Megan', 'Thompson', 16, 16),
('Christopher', 'Garcia', 17, 17),
('Heather', 'Martinez', 18, 18),
('Matthew', 'Robinson', 19, 19),
('Elizabeth', 'Clark', 20, 20),
('Joshua', 'Rodriguez', 21, 21);

END;