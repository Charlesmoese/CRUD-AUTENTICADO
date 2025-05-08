import express from 'express';
import dotenv from "dotenv";
import db from "./database/configdb.js";
import userRoutes from './routes/user.route.js';
import tokenRoutes from './routes/token.route.js';
import contactRoutes from './routes/contact.route.js'; // Importa as rotas de contatos

dotenv.config();

db.connect();

const app = express();

app.use(express.json());
app.use("/users", userRoutes);
app.use("/", tokenRoutes);
app.use("/contacts", contactRoutes); // Adiciona as rotas de contatos
app.get("/", (req, res) => res.send("Express on Vercel"));

app.listen(3000, () => {
    console.log('Server running at http://localhost:3000');
});