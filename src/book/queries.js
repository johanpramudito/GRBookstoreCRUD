const { get } = require("./routes");

const getBooks = "SELECT * FROM \"Book\"";
const getBookByID = 'SELECT * FROM "Book" WHERE "Book_ID" = $1';
const createBook = "INSERT INTO \"Book\" (\"ISBN\", \"Name\", \"Release_Year\", \"Print_Year\", \"Price\", \"Description\", \"Size\", \"Language_ID\", \"Publisher_ID\") VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING *";
const updateBook = "UPDATE \"Book\" SET \"ISBN\" = $1, \"Name\" = $2, \"Release_Year\" = $3, \"Print_Year\" = $4, \"Price\" = $5, \"Description\" = $6, \"Size\" = $7, \"Language_ID\" = $8, \"Publisher_ID\" = $9 WHERE \"Book_ID\" = $10 RETURNING *";
const deleteBook = "DELETE FROM \"Book\" WHERE \"Book_ID\" = $1 RETURNING *";

const searchBooks = (criteria) => {
    let query = 'SELECT * FROM "Book" WHERE';
    let values = [];
    let count = 1;

    for (let key in criteria) {
        if (criteria[key]) {
            if (count > 1) query += ' AND';
            query += ` "${key}" ILIKE $${count}`;
            values.push(`%${criteria[key]}%`);
            count++;
        }
    }

    return { query, values };
};

const getBookByAuthor = `
    SELECT b.*
    FROM "Book" b
    JOIN "Book_Author" ba ON b."Book_ID" = ba."Book_ID"
    JOIN "Author" a ON ba."Author_ID" = a."Author_ID"
    WHERE a."First_Name" ILIKE $1 OR a."Last_Name" ILIKE $1;
`;

module.exports = {
    getBooks,
    createBook,
    updateBook,
    deleteBook,
    searchBooks,
    getBookByAuthor,
    getBookByID
};