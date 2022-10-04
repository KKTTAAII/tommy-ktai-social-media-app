import User from '../schema/user.js';
import catchAsync from '../Utilities/asyncErr.js';
import customErr from '../Utilities/customErr.js'
import jwt from 'jsonwebtoken';
import crypto from 'node:crypto';
import emailTemplate from '../Utilities/email.js';

const signJwt = (id) => jwt.sign({
    id
}, process.env.JWT_SECRET, {
    expiresIn: process.env.JWT_EXPIRES_IN
})


const signUp = catchAsync(async (req, res, next) => {
    const newUser = await User.create({
        name: req.body.name,
        email: req.body.email,
        password: req.body.password,
        role: req.body.role
    });

    if (newUser) {
        const activationToken = newUser.actToken()
        console.log(activationToken)
        const activateURL = `${req.protocol}://${req.get('host')}/api/v1/auth/activate/${activationToken}`;
        emailTemplate(req, newUser, activateURL)
        res.status(201).json({
            status: 'success',
            meesage: 'User created successfully'
        })
        await newUser.save()
    } else {
        res.status(400).json({
            status: 'fail',
            message: 'Error creating account'
        })
    }
});

const activateAcc = catchAsync(async (req, res, next) => {
    const hashedToken = crypto.createHash('sha256').update(req.params.token).digest('hex');
    const user = await User.findOne({
        activationToken: hashedToken,
        activationTokenExpires: {
            $gt: Date.now()
        }
    })

    if (!user) {
        return next(new customErr('Invalid or Expired Token', 400))
    } else {
        user.activated = true;
        user.activationToken = undefined;
        user.activationTokenExpires = undefined
        await user.save()
        res.status(200).json({
            status: 'success',
            message: 'Account activated'
        })
    }
})

const login = catchAsync(async (req, res, next) => {
    const {
        email,
        password
    } = req.body

    if (!email || !password) {
        return next(new customErr('Enter an email and a password', 400))
    }
    const user = await User.findOne({
        email
    }).select('+password') //The + sign overrides select=false value of password field in the user schema level

    if (!user || !(await user.checkPass(password, user.password))) {
        return next(new customErr('Incorrect email or password', 400))
    }
    user.password = undefined
    res.status(200).json({
        status: 'success',
        message: 'Login successful',
        token,
        data: {
            user
        }
    })
})

export {
    signUp,
    activateAcc,
    login
}