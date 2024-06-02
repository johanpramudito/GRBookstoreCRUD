const pool = require('../db.js');
const queries = require('./queries.js');

const getBooks = async (req, res) => {
    try {
        const result = await pool.query(queries.getBooks);
        res.status(200).json(result.rows);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const getBookByID = async (req, res) => {
    try {
        const id = parseInt(req.params.Book_ID, 10);
        if (isNaN(id)) {
            return res.status(400).json({ error: "Invalid Book_ID" });
        }

        const result = await pool.query(queries.getBookByID, [id]);
        res.status(200).json(result.rows[0]);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const createBook = async (req, res) => {
    const { ISBN, Name, Release_Year, Print_Year, Price, Description, Size, Language_ID, Publisher_ID } = req.body;
    const values = [ISBN, Name, Release_Year, Print_Year, Price, Description, Size, Language_ID, Publisher_ID, ];

    try {
        const result = await pool.query(queries.createBook, values);
        res.status(201).json(result.rows[0]);
        res.status(201).json({ message: "Book created successfully" });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const updateBook = async (req, res) => {
    const id = parseInt(req.params.Book_ID, 10);
    if (isNaN(id)) {
        return res.status(400).json({ error: "Invalid Book_ID" });
    }

    const { ISBN, Name, Release_Year, Print_Year, Price, Description, Size, Language_ID, Publisher_ID } = req.body;
    const values = [ISBN, Name, Release_Year, Print_Year, Price, Description, Size, Language_ID, Publisher_ID, id];

    try {
        const result = await pool.query(queries.updateBook, values);
        res.status(200).json(result.rows[0]);
        res.status(200).json({ message: "Book updated successfully" });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const deleteBook = async (req, res) => {
    const id = parseInt(req.params.Book_ID, 10);
    if (isNaN(id)) {
        return res.status(400).json({ error: "Invalid Book_ID" });
    }

    try {
        const result = await pool.query(queries.deleteBook, [id]);
        res.status(200).json(result.rows[0]);
        res.status(200).json({ message: "Book deleted successfully" });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const searchBooks = async (req, res) => {
    const criteria = req.query;
    const { query, values } = queries.searchBooks(criteria);

    try {
        const result = await pool.query(query, values);
        res.status(200).json(result.rows);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const getBookByAuthor = async (req, res) => {
    const author = `%${req.params.author}%`;

    try {
        const result = await pool.query(queries.getBooksByAuthor, [author]);
        res.status(200).json(result.rows);
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const createBookTransaction = async (req, res) => {
    const client = await pool.connect();

    try {
        await client.query('BEGIN');

        const { books } = req.body;

        
        for (const book of books) {
            const { ISBN, Name, Release_Year, Print_Year, Price, Description, Size, Language_ID, Publisher_ID } = book;
            const values = [ISBN, Name, Release_Year, Print_Year, Price, Description, Size, Language_ID, Publisher_ID];
            const result = await client.query(queries.createBook, values);
        }

        await client.query('COMMIT');

        res.status(200).json({ message: "Transaction completed successfully" });
    } catch (error) {
        await client.query('ROLLBACK');
        res.status(500).json({ error: error.message });
    } finally {
        client.release();
    }
};

const deleteBookTransaction = async (req, res) => {
    const client = await pool.connect();

    try {
        await client.query('BEGIN');

        const { bookIDs } = req.body;

        for (const Book_ID of bookIDs) {
            const result = await client.query(queries.deleteBook, [Book_ID]);
        }

        await client.query('COMMIT');

        res.status(200).json({ message: "Delete transaction completed successfully" });
    } catch (error) {
        await client.query('ROLLBACK');
        res.status(500).json({ error: error.message });
    } finally {
        client.release();
    }
};

module.exports = {
    getBooks,
    createBook,
    updateBook,
    deleteBook,
    searchBooks,
    getBookByAuthor,
    getBookByID,
    createBookTransaction,
    deleteBookTransaction
};
