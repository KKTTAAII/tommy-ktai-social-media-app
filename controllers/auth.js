import User from '../models/user.js';
import catchAsync from '../Utils/asyncErr.js';
import customErr from '../Utilities/customErr.js';
import jwt from 'jsonwebtoken';
import crypto from 'node:crypto';

const signJwt = (id) => jwt.sign({
    id
}, process.env.JWT_SECRET, {
    expiresIn: process.env.JWT_EXPIRES_IN
})



const signUp = catchAsync(async (request, response, next) => {
    const newUser = await User.create({
        name: request.body.name,
        email: request.body.email,
        password: request.body.password,
        passwordChangedAt: request.body.passwordChangedAt,
        role: request.body.role
    });
    //Send response and email
})