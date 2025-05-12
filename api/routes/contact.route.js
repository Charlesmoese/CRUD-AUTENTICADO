import express from 'express';
import contactController from '../controller/contact.controller.js';
import verifyToken from '../middlewere/jwt.token.middleware.js';

const router = express.Router();

// Rotas protegidas
router.post('/', verifyToken, contactController.createContact);
router.get('/', verifyToken, contactController.getAllContacts);
router.put('/:id', verifyToken, contactController.updateContact);
router.delete('/:id', verifyToken, contactController.deleteContact);

export default router;