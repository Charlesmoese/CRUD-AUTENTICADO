import Contact from '../models/Contact.js';

const createContact = async (req, res) => {
    console.log("Creating contact", req.body);
    const { name, email, phone } = req.body;

    // Validação dos campos obrigatórios
    if (!name || !phone) {
        return res.status(400).json({ message: "Name and phone are required" });
    }

    try {
        // Verifica se o número de telefone já existe para o usuário logado
        const existingContact = await Contact.findOne({ phone, userId: req.userId });
        if (existingContact) {
            return res.status(400).json({ message: "Phone number already exists for this user" });
        }

        // Cria o novo contato associado ao usuário logado
        const newContact = await Contact.create({ name, email, phone, userId: req.userId });
        console.log("Contact created:", newContact);
        return res.status(200).json({ message: 'Contact created successfully', contact: newContact });
    } catch (error) {
        console.error("Error creating contact", error);
        return res.status(500).json({ message: `Error creating contact: ${error.message}` });
    }
};

const getAllContacts = async (req, res) => {
    try {
        console.log("Fetching all contacts for user:", req.userId);
        const contacts = await Contact.find({ userId: req.userId }); // Filtra contatos pelo usuário logado
        console.log("Contacts fetched successfully:", contacts);
        return res.status(200).json(contacts);
    } catch (error) {
        console.error("Error fetching contacts:", error.message);
        return res.status(500).json({ message: `An error occurred while fetching contacts: ${error.message}` });
    }
};

const deleteContact = async (req, res) => {
    const { id } = req.params;

    try {
        console.log(`Deleting contact with id: ${id}`);
        const deletedContact = await Contact.findByIdAndDelete(id);
        if (!deletedContact) {
            return res.status(404).json({ message: "Contact not found" });
        }
        console.log("Contact deleted successfully:", deletedContact);
        return res.status(200).json({ message: "Contact deleted successfully" });
    } catch (error) {
        console.error("Error deleting contact:", error.message);
        return res.status(500).json({ message: `Error deleting contact: ${error.message}` });
    }
};

const updateContact = async (req, res) => {
    const { id } = req.params;
    const { name, email, phone } = req.body;

    // Validação dos campos obrigatórios
    if (!name && !email && !phone) {
        return res.status(400).json({ message: "At least one field (name, email, or phone) must be provided for update" });
    }

    try {
        console.log(`Updating contact with id: ${id}`);
        const updatedContact = await Contact.findByIdAndUpdate(
            id,
            { name, email, phone },
            { new: true, runValidators: true } // Retorna o documento atualizado e valida os campos
        );

        if (!updatedContact) {
            return res.status(404).json({ message: "Contact not found" });
        }

        console.log("Contact updated successfully:", updatedContact);
        return res.status(200).json({ message: "Contact updated successfully", contact: updatedContact });
    } catch (error) {
        console.error("Error updating contact:", error.message);
        return res.status(500).json({ message: `Error updating contact: ${error.message}` });
    }
};

export default { createContact, getAllContacts, deleteContact, updateContact };