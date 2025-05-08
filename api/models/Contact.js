import mongoose from "mongoose";

const ContatcSchema = new mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    email: {
        type: String,
        required: false
    },
    Phone: {
        type: String,
        required: true,
        select: false,
        unique: true
    },
});

const Contact = mongoose.model("Contact", ContactSchema);
export default Contact;