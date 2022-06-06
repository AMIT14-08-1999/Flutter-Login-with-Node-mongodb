const mongoose=require("mongoose");
const User=mongoose.Schema({
    mobileNo:{
        type:String,
        required:true,
        unique:true,  
    },
    password:{
        type:String,
        required:true,
    },
    fullName:{
        type:String,
    },
    email:{
        type:String,
    },
    gender:{
        type:String,
    },
    alterateMoNumber:{
        type:String,
    },
    hintName:{
        type:String,
    },

})
module.exports=mongoose.model("User",User);