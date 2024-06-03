const pool = require('../db.js');
const queries = require('./queries.js');

const getWishlist = async (req, res) => {
    pool.query(queries.getWishlist, (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    });
}

const getWishlistById = async (req, res) => {
    const id = parseInt(req.params.Wishlist_ID);
    pool.query(queries.getWishlistById, [id], (error, results) => {
        if (error) throw error;
        res.status(200).json(results.rows);
    });
};

const createWishlist = async (req, res) => {
    const { Book_ID, Customer_ID } = req.body;
    const values = [Book_ID, Customer_ID];
    try {
        const result = await pool.query(queries.createWishlist, values);
        res.status(201).json({ message: "Wishlist created successfully" });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const updateWishlist = async (req, res) => {
    const id = parseInt(req.params.Wishlist_ID);
    const { Book_ID, Customer_ID } = req.body;
    const values = [Book_ID, Customer_ID, id];
    try {
        const result = await pool.query(queries.updateWishlist, values);
        res.status(200).json({ message: "Wishlist updated successfully" });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};

const deleteWishlist = async (req, res) => {
    const id = parseInt(req.params.Wishlist_ID);
    try {
        const result = await pool.query(queries.deleteWishlist, [id]);
        res.status(200).json({ message: "Wishlist deleted successfully" });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
};
module.exports = {
    getWishlist,
    getWishlistById,
    createWishlist,
    updateWishlist,
    deleteWishlist,
};