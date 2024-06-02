BEGIN;

CREATE VIEW public."Book_View" AS
SELECT b."Book_ID",
    b."ISBN",
    b."Name",
    b."Release_Year",
    b."Print_Year",
    b."Price",
    b."Description",
    b."Size",
    l."Name" AS "Language",
    p."Name" AS "Publisher"
FROM public."Book" b
JOIN public."Language" l ON b."Language_ID" = l."Language_ID"
JOIN public."Publisher" p ON b."Publisher_ID" = p."Publisher_ID";

CREATE VIEW public."Customer_View" AS
SELECT c."Customer_ID",
    c."First_Name",
    c."Last_Name",
    c."Email",
    c."Create_Date",
    a."Address",
    ci."City",
    co."Country",
    a."Postal_Code",
    a."Phone",
    c."Username",
    c."Password"
FROM public."Customer" c
JOIN public."Address" a ON c."Address_ID" = a."Address_ID"
JOIN public."City" ci ON a."City_ID" = ci."City_ID"
JOIN public."Country" co ON ci."Country_ID" = co."Country_ID";

CREATE VIEW public."Inventory_View" AS
SELECT i."Inventory_ID",
    b."Name" AS "Book",
    s."Name" AS "Store",
    i."Book_Amount"
FROM public."Inventory" i
JOIN public."Book" b ON i."Book_ID" = b."Book_ID"
JOIN public."Store" s ON i."Store_ID" = s."Store_ID";

CREATE VIEW public."Staff_View" AS
SELECT s."Staff_ID",
    s."First_Name",
    s."Last_Name",
    st."Name" AS "Store",
    a."Address",
    ci."City",
    co."Country",
    a."Postal_Code",
    a."Phone"
FROM public."Staff" s
JOIN public."Store" st ON s."Store_ID" = st."Store_ID"
JOIN public."Address" a ON s."Address_ID" = a."Address_ID"
JOIN public."City" ci ON a."City_ID" = ci."City_ID"
JOIN public."Country" co ON ci."Country_ID" = co."Country_ID";

CREATE VIEW public."Wishlist_View" AS
SELECT w."Wishlist_ID",
    c."First_Name" || ' ' || c."Last_Name" AS "Customer",
    b."Name" AS "Book"
FROM public."Wishlist" w
JOIN public."Customer" c ON w."Customer_ID" = c."Customer_ID"
JOIN public."Book" b ON w."Book_ID" = b."Book_ID";

CREATE VIEW public."Order_View" AS
SELECT o."Order_ID",
    i."Book_Amount",
    c."First_Name" || ' ' || c."Last_Name" AS "Customer",
    b."Name" AS "Book",
    d."Name" AS "Discount",
    o."Order_Date",
    o."Order_Amount"
FROM public."Order" o
JOIN public."Inventory" i ON o."Inventory_ID" = i."Inventory_ID"
JOIN public."Customer" c ON o."Customer_ID" = c."Customer_ID"
JOIN public."Book" b ON i."Book_ID" = b."Book_ID"
JOIN public."Discounts" d ON o."Discounts_ID" = d."Discounts_ID";

CREATE VIEW public."Rating_View" AS
SELECT r."Rating_ID",
    c."First_Name" || ' ' || c."Last_Name" AS "Customer",
    b."Name" AS "Book",
    r."Rating",
    r."Rating_Date"
FROM public."Rating" r
JOIN public."Customer" c ON r."Customer_ID" = c."Customer_ID"
JOIN public."Book" b ON r."Book_ID" = b."Book_ID";

CREATE VIEW public."Review_View" AS
SELECT rv."Review_ID",
    c."First_Name" || ' ' || c."Last_Name" AS "Customer",
    b."Name" AS "Book",
    rv."Review_Text",
    rv."Review_Date"
FROM public."Review" rv
JOIN public."Customer" c ON rv."Customer_ID" = c."Customer_ID"
JOIN public."Book" b ON rv."Book_ID" = b."Book_ID";

CREATE VIEW public."Book_Author_View" AS
SELECT ba."Book_ID",
    a."First_Name" || ' ' || a."Last_Name" AS "Author"
FROM public."Book_Author" ba
JOIN public."Author" a ON ba."Author_ID" = a."Author_ID";

CREATE VIEW public."Book_Category_View" AS
SELECT bc."Book_ID",
    c."Name" AS "Category"
FROM public."Book_Category" bc
JOIN public."Category" c ON bc."Category_ID" = c."Category_ID";

CREATE VIEW public."Book_Discounts_View" AS
SELECT bd."Book_ID",
    d."Name" AS "Discount",
    d."Value"
FROM public."Book_Discounts" bd
JOIN public."Discounts" d ON bd."Discounts_ID" = d."Discounts_ID";

CREATE VIEW public."Publisher_View" AS
SELECT p."Publisher_ID",
    p."Name",
    c."City",
    co."Country"
FROM public."Publisher" p
JOIN public."City" c ON p."City_ID" = c."City_ID"
JOIN public."Country" co ON c."Country_ID" = co."Country_ID";

CREATE VIEW public."City_View" AS
SELECT ci."City_ID",
    ci."City",
    co."Country"
FROM public."City" ci
JOIN public."Country" co ON ci."Country_ID" = co."Country_ID";

CREATE VIEW public."Address_View" AS
SELECT a."Address_ID",
    a."Address",
    ci."City",
    co."Country",
    a."Postal_Code",
    a."Phone"
FROM public."Address" a
JOIN public."City" ci ON a."City_ID" = ci."City_ID"
JOIN public."Country" co ON ci."Country_ID" = co."Country_ID";

CREATE VIEW public."Country_View" AS
SELECT co."Country_ID",
    co."Country"
FROM public."Country" co;

CREATE VIEW public."Language_View" AS
SELECT l."Language_ID",
    l."Name"
FROM public."Language" l;

CREATE VIEW public."Category_View" AS
SELECT c."Category_ID",
    c."Name"
FROM public."Category" c;

CREATE VIEW public."Discounts_View" AS
SELECT d."Discounts_ID",
    d."Name",
    d."Value"
FROM public."Discounts" d;

CREATE VIEW public."Store_View" AS
SELECT s."Store_ID",
    s."Name"
FROM public."Store" s;

END;