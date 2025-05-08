import express from 'express';
import contactController from '../controller/contact.controller.js';

const router = express.Router();

// Rota para criar um novo contato
router.post('/contacts', contactController.createContact);

// Rota para obter todos os contatos
router.get('/contacts', contactController.getAllContacts);

// Rota para atualizar um contato pelo ID
router.put('/contacts/:id', contactController.updateContact);

// Rota para deletar um contato pelo ID
router.delete('/contacts/:id', contactController.deleteContact);

export default router;