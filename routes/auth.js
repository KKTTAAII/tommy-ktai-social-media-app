import express from 'express';
import {
    signUp,
    activateAcc,
    login,
    forgotPassword,
    resetPassword
} from '../controllers/auth.js'

const authRouter = express.Router();

authRouter.post('/signup', signUp);
authRouter.post('/login', login);
authRouter.post('/forgotpassword', forgotPassword)
authRouter.patch('/activate/:token', activateAcc)
authRouter.patch('/resetpassword/:token', resetPassword)

export default authRouter