const { Router } = require('express');
const controller = require('./controller.js');
const router = Router();

router.get('/', controller.getWishlist);
router.get('/:Wishlist_ID', controller.getWishlistById);
router.post('/', controller.createWishlist);
router.put('/:Wishlist_ID', controller.updateWishlist);
router.delete('/:Wishlist_ID', controller.deleteWishlist);

module.exports = router;