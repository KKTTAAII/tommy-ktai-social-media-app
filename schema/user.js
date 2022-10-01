import mongoose from 'mongoose';
import validator from 'validator';


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
        unique: true,
        minLength: 2,
        maxLength: 15,
        required: [true, 'User must enter a userName'],
    },
    profilePhoto: String,
    profile: {
        type: String,
        //Required ?
    },
    registrationDate: Date,
    passwordChangedAt: Date,

})

//Pre save hooks




const User = mongoose.model('User', userSchema)

export default User