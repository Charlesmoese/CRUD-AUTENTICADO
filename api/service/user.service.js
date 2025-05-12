import User from "../models/User.js";

export const getUserById = async (userId) => {
    const user = await User.findById(userId);
    if (!user) {
        console.error(`User not found: User ID ${userId}`);
        throw new Error("User not found");
    }
    return user;
};

export const createUser = async (userData) => {
    return await User.create(userData);
};

export const updateUserById = async (userId, updateData) => {
    return await User.findByIdAndUpdate(userId, updateData, { new: true });
};

export const deleteUserById = async (userId) => {
    return await User.findByIdAndDelete(userId);
};