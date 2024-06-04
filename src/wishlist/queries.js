const getWishlist = 'SELECT * FROM "Wishlist"';
const getWishlistById = 'SELECT * FROM "Wishlist" WHERE "Wishlist_ID" = $1';
const createWishlist = 'INSERT INTO "Wishlist" ("Book_ID", "Customer_ID") VALUES ($1, $2) RETURNING *';
const updateWishlist = 'UPDATE "Wishlist" SET "Book_ID" = $1, "Customer_ID" = $2 WHERE "Wishlist_ID" = $3 RETURNING *';
const deleteWishlist = 'DELETE FROM "Wishlist" WHERE "Wishlist_ID" = $1 RETURNING *';

module.exports = {
    getWishlist,
    getWishlistById,
    createWishlist,
    updateWishlist,
    deleteWishlist,
};