import express from 'express'
import morgan from 'morgan'
import dotenv from 'dotenv'
import customErr from './Utilities/customErr.js'; //Custom error Import
import globalErr from './controllers/err.js';
import authRouter from './routes/auth.js';
import helmet from 'helmet';
import cors from 'cors';

dotenv.config({
    path: './config.env'
})
const app = express();

app.use(helmet())
app.use(cors())


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
app.use('/api/v1/auth', authRouter)

//Handle undefined routes
app.all('*', (req, res, next) => {
    next(new customErr(`${req.originalUrl} does not exist on this server`, 404))
})


app.use(globalErr)

export default app