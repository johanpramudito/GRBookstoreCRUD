const { Router } = require('express');
const controller = require('./controller.js');
const router = Router();

router.get('/', controller.getBooks);
router.post('/', controller.createBook);
router.put('/:Book_ID', controller.updateBook);
router.delete('/:Book_ID', controller.deleteBook);
router.get('/search', controller.searchBooks);
router.get('/author/:author', controller.getBookByAuthor);
router.get('/:Book_ID', controller.getBookByID);
router.post('/transaction/create', controller.createBookTransaction);
router.delete('/transaction/delete', controller.deleteBookTransaction);



module.exports = router;
