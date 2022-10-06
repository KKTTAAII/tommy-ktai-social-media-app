import mongoose from 'mongoose';
import validator from 'validator';
import crypto from 'node:crypto';
import bcrypt from 'bcryptjs'
import {
    head
} from 'request';
import {
    reset
} from 'nodemon';

const userSchema = mongoose.Schema({
    name: {
        type: String,
        minLength: 3,
        required: [true, 'User must enter a name'],
    },
    email: {
        type: String,
        required: [true, 'User must enter a valid email'],
        unique: true,
        validate: [validator.isEmail, 'Enter a valid email']
    },
    password: {
        type: String,
        minLength: 8,
        required: [true, 'User must enter a password']
    },
    userName: {
        type: String,
        // unique: true, 
        // minLength: 2,
        // maxLength: 15
    },
    activated: {
        type: Boolean,
        default: false
    },
    profilePhoto: String,
    profile: {
        type: String,
        //Required ?
    },
    registrationDate: Date,
    passwordChangedAt: Date,
    activationToken: String,
    activationTokenExpires: Date,
    passwordResetToken: String,
    passwordResetTokenExpires: Date
})
//Mongoose pre-save hook for password hashing
userSchema.pre('save', async function (next) {
    if (!this.isModified('password')) return next()
    this.password = await bcrypt.hash(this.password, 8)
    next()
})

//Pre-save hook to record timestamp of password modification
userSchema.pre('save', async function (next) {
    if (!this.isModified('password') || this.isNew) return next()

    this.passwordChangedAt = (Date.now() - 1000)
})

//Method to generate activation token
userSchema.methods.actToken = function () {
    const actToken = crypto.randomBytes(32).toString('hex');
    this.activationToken = crypto.createHash('sha256').update(actToken).digest('hex');
    this.activationTokenExpires = (Date.now() + 10 * 60 * 1000); //Set to 48 hours for production
    return actToken;
};

//Method to generate password reset token 
userSchema.methods.resetToken = function () {
    const resetToken = crypto.randomBytes(32).toString('hex')
    this.passwordResetToken = crypto.createHash('sha256').update(resetToken).digest('hex')
    this.passwordResetTokenExpires = (Date.now() + 60 * 60 * 1000)
    return resetToken
}

//To check password correctness
userSchema.methods.checkPass = async function (enteredPass, storedPass) {
    return await bcrypt.compare(enteredPass, storedPass)
}

//Verify that password has not been recently changed
userSchema.methods.currentPass = function (jwtTime) {
    if (this.passwordChangedAt) {
        const changedTimeStamp = parseInt(this.passwordChangedAt.getTime(), 10)
        return jwtTime < changedTimeStamp
    } else return false
}



const User = mongoose.model('User', userSchema)

export default User