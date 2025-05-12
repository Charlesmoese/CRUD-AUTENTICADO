import express from 'express';
import userController from '../controller/user.controller.js';
import verifyToken from '../middlewere/jwt.token.middleware.js';

const router = express.Router();

router.post('/register', userController.register); // Registro não precisa de autenticação
router.post('/login', userController.login); // Login não precisa de autenticação

// Rotas protegidas
router.get('/users', verifyToken, userController.getAllUsers);

export default router;