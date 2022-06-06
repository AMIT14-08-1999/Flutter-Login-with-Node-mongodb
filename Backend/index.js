require("dotenv").config();
const express=require("express");
const mongoose = require("mongoose");
const port=process.env.PORT||3000;
const app=express();
const loginRoutes=require("./routes/login.routes")
const userDetailsRoutes=require("./user_details")

mongoose.connect(`mongodb+srv://myntra:${process.env.mongodbPassword}@myntra.ujjhq.mongodb.net/?retryWrites=true&w=majority`)
const connection=mongoose.connection;
connection.once("open",()=>{
    console.log("MongoDB Connection success");
})



app.use(express.json());
app.use("/login",loginRoutes);
app.use("/user-details",userDetailsRoutes)

app.listen(port,"0.0.0.0",()=>{
    console.log("Welcome we are running on port",port);
})
