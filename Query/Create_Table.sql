BEGIN;


CREATE TABLE IF NOT EXISTS public."Book"
(
    "Book_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "ISBN" character varying(20) STORAGE PLAIN,
    "Name" character varying(100),
    "Release_Year" character varying(4),
    "Print_Year" character varying(4),
    "Price" bigint,
    "Description" text,
    "Size" character(50),
    "Language_ID" integer NOT NULL,
    "Publisher_ID" integer NOT NULL,
    PRIMARY KEY ("Book_ID")
);

CREATE TABLE IF NOT EXISTS public."Language"
(
    "Language_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "Name" character(50),
    PRIMARY KEY ("Language_ID")
);

CREATE TABLE IF NOT EXISTS public."Author"
(
    "Author_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "First_Name" character varying(100),
    "Last_Name" character varying(100),
    PRIMARY KEY ("Author_ID")
);

CREATE TABLE IF NOT EXISTS public."Publisher"
(
    "Publisher_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "Name" character(50),
    "City_ID" integer NOT NULL,
    PRIMARY KEY ("Publisher_ID")
);

CREATE TABLE IF NOT EXISTS public."Category"
(
    "Category_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "Name" character(100),
    PRIMARY KEY ("Category_ID")
);

CREATE TABLE IF NOT EXISTS public."Book_Category"
(
    "Book_ID" integer NOT NULL,
    "Category_ID" integer NOT NULL
);

CREATE TABLE IF NOT EXISTS public."Customer"
(
    "Customer_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "First_Name" character varying(100),
    "Last_Name" character varying(100),
    "Email" character varying(100),
    "Create_Date" timestamp with time zone,
    "Address_ID" integer NOT NULL,
    "Username" character varying(100),
    "Password" character varying(100),
    PRIMARY KEY ("Customer_ID")
);

CREATE TABLE IF NOT EXISTS public."Inventory"
(
    "Inventory_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "Book_ID" integer NOT NULL,
    "Store_ID" integer NOT NULL,
    "Book_Amount" integer,
    PRIMARY KEY ("Inventory_ID")
);

CREATE TABLE IF NOT EXISTS public."Store"
(
    "Store_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "Name" character varying(50),
    PRIMARY KEY ("Store_ID")
);

CREATE TABLE IF NOT EXISTS public."Address"
(
    "Address_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "Address" character varying(255),
    "City_ID" integer,
    "Postal_Code" character varying(10),
    "Phone" character varying(20),
    PRIMARY KEY ("Address_ID")
);

CREATE TABLE IF NOT EXISTS public."City"
(
    "City_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "City" character varying(50),
    "Country_ID" integer,
    PRIMARY KEY ("City_ID")
);

CREATE TABLE IF NOT EXISTS public."Country"
(
    "Country_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "Country" character varying(50),
    PRIMARY KEY ("Country_ID")
);

CREATE TABLE IF NOT EXISTS public."Staff"
(
    "Staff_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "First_Name" character varying(50),
    "Last_Name" character varying(50),
    "Store_ID" integer,
    "Address_ID" integer,
    PRIMARY KEY ("Staff_ID")
);

CREATE TABLE IF NOT EXISTS public."Wishlist"
(
    "Wishlist_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "Book_ID" integer NOT NULL,
    "Customer_ID" integer NOT NULL,
    PRIMARY KEY ("Wishlist_ID")
);

CREATE TABLE IF NOT EXISTS public."Order"
(
    "Order_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "Inventory_ID" integer,
    "Customer_ID" integer,
    "Discounts_ID" integer,
    "Order_Date" timestamp with time zone,
    "Order_Amount" integer,
    PRIMARY KEY ("Order_ID"),
    CONSTRAINT " Inventory_ID" UNIQUE ("Inventory_ID")
        INCLUDE("Inventory_ID")
);

CREATE TABLE IF NOT EXISTS public."Rating"
(
    "Rating_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "Book_ID" integer NOT NULL,
    "Customer_ID" integer NOT NULL,
    "Rating" numeric NOT NULL,
    "Rating_Date" timestamp with time zone NOT NULL,
    PRIMARY KEY ("Rating_ID")
);

CREATE TABLE IF NOT EXISTS public."Review"
(
    "Review_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "Book_ID" integer NOT NULL,
    "Customer_ID" integer NOT NULL,
    "Review_Text" text,
    "Review_Date" timestamp with time zone,
    PRIMARY KEY ("Review_ID")
);

CREATE TABLE IF NOT EXISTS public."Book_Author"
(
    "Book_ID" integer NOT NULL,
    "Author_ID" integer NOT NULL
);

CREATE TABLE IF NOT EXISTS public."Discounts"
(
    "Discounts_ID" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 ),
    "Name" character varying(50),
    "Value" numeric,
    PRIMARY KEY ("Discounts_ID")
);

CREATE TABLE IF NOT EXISTS public."Book_Discounts"
(
    "Book_ID" integer,
    "Discounts_ID" integer
);

ALTER TABLE IF EXISTS public."Book"
    ADD CONSTRAINT "Language_ID" FOREIGN KEY ("Language_ID")
    REFERENCES public."Language" ("Language_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Book"
    ADD CONSTRAINT "Publisher_ID" FOREIGN KEY ("Publisher_ID")
    REFERENCES public."Publisher" ("Publisher_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Publisher"
    ADD CONSTRAINT "City_ID" FOREIGN KEY ("City_ID")
    REFERENCES public."City" ("City_ID") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."Book_Category"
    ADD CONSTRAINT "Category_ID" FOREIGN KEY ("Category_ID")
    REFERENCES public."Category" ("Category_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Book_Category"
    ADD CONSTRAINT "Book_ID" FOREIGN KEY ("Book_ID")
    REFERENCES public."Book" ("Book_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Customer"
    ADD CONSTRAINT "Address_ID" FOREIGN KEY ("Address_ID")
    REFERENCES public."Address" ("Address_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Inventory"
    ADD CONSTRAINT "Store_ID" FOREIGN KEY ("Store_ID")
    REFERENCES public."Store" ("Store_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Inventory"
    ADD CONSTRAINT "Book_ID" FOREIGN KEY ("Book_ID")
    REFERENCES public."Book" ("Book_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Address"
    ADD CONSTRAINT "City_ID" FOREIGN KEY ("City_ID")
    REFERENCES public."City" ("City_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."City"
    ADD CONSTRAINT "Country_ID" FOREIGN KEY ("Country_ID")
    REFERENCES public."Country" ("Country_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Staff"
    ADD CONSTRAINT "Store_ID" FOREIGN KEY ("Store_ID")
    REFERENCES public."Store" ("Store_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Staff"
    ADD CONSTRAINT "Address_ID" FOREIGN KEY ("Address_ID")
    REFERENCES public."Address" ("Address_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Wishlist"
    ADD CONSTRAINT "Customer_ID" FOREIGN KEY ("Customer_ID")
    REFERENCES public."Customer" ("Customer_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Wishlist"
    ADD CONSTRAINT "Book_ID" FOREIGN KEY ("Book_ID")
    REFERENCES public."Book" ("Book_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Order"
    ADD CONSTRAINT "Inventory_ID" FOREIGN KEY ("Inventory_ID")
    REFERENCES public."Inventory" ("Inventory_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Order"
    ADD CONSTRAINT "Customer_ID" FOREIGN KEY ("Customer_ID")
    REFERENCES public."Customer" ("Customer_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Order"
    ADD FOREIGN KEY ("Discounts_ID")
    REFERENCES public."Discounts" ("Discounts_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Rating"
    ADD CONSTRAINT "Book_ID" FOREIGN KEY ("Book_ID")
    REFERENCES public."Book" ("Book_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Rating"
    ADD FOREIGN KEY ("Customer_ID")
    REFERENCES public."Customer" ("Customer_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Review"
    ADD FOREIGN KEY ("Book_ID")
    REFERENCES public."Book" ("Book_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Review"
    ADD FOREIGN KEY ("Customer_ID")
    REFERENCES public."Customer" ("Customer_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Book_Author"
    ADD FOREIGN KEY ("Book_ID")
    REFERENCES public."Book" ("Book_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Book_Author"
    ADD FOREIGN KEY ("Author_ID")
    REFERENCES public."Author" ("Author_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Book_Discounts"
    ADD FOREIGN KEY ("Book_ID")
    REFERENCES public."Book" ("Book_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Book_Discounts"
    ADD FOREIGN KEY ("Discounts_ID")
    REFERENCES public."Discounts" ("Discounts_ID") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;

END;