import express from 'express'
import * as morgan from 'morgan'
import customErr from './Utilities/customErr.js'; //Custom error Import
import globalErr from './controllers/err.js';
//Import routes
//Import Global error handler


const app = express();

//Middlewares
if (process.env.NODE_ENV === 'development') {
    app.use(morgan('dev'))
}

app.use(express.json())

app.use((req, res, next) => {
    req.reqTime = (new Date()).toISOString();
    next();
})

//Mount routing middlewares


//Handle undefined routes
app.all('*', (req, res, next) => {
    next(new customErr(`${req.originalUrl} does not exist on this server`, 404))
})

//Handle errors with Global handler here
app.use(globalErr)

export default app