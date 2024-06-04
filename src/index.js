const express = require('express');
const BookRoutes = require('./book/routes.js');
const WishlistRoutes = require('./wishlist/routes.js');
const app = express();
const PORT = 5000

app.use(express.json());

app.use('/api/books', BookRoutes);

app.use('/api/wishlists', WishlistRoutes);

app.listen(PORT, () => {
    console.log("Express server started on port: " + PORT);    
});