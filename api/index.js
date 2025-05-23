import express from 'express';
import dotenv from "dotenv";
import cors from 'cors'; // Corrija aqui!
import db from "./database/configdb.js";
import userRoutes from './routes/user.route.js';
import contactRoutes from './routes/contact.route.js';

dotenv.config();

db.connect();

const app = express();

app.use(cors({
  origin: [
    'http://localhost:5173',
    'https://crud-frontend-autenticado.vercel.app',
    'https://shiny-lamp-r4wr4v9jw6x6fpp9r-3000.app.github.dev'
  ],
  credentials: true
}));

app.use(express.json());
app.use("/users", userRoutes);
app.use("/contacts", contactRoutes);
app.get("/", (req, res) => res.send("Express on Vercel"));

app.listen(3000, () => {
    console.log('Server running at http://localhost:3000');
});