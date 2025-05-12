import mongoose from "mongoose";

const ContactSchema = new mongoose.Schema({
    name: { 
        type: String, 
        required: true 
    },
    email: { 
        type: String, 
        required: false 
    },
    phone: { 
        type: String, 
        required: true 
    },
    userId: { 
        type: mongoose.Schema.Types.ObjectId, 
        ref: "User", 
        required: true 
    },
}, { timestamps: true });

const Contact = mongoose.model("Contact", ContactSchema);

export default Contact;