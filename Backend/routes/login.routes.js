const express=require("express");
const router=express.Router();
const User=require("../model/user.models")
const jwt = require('jsonwebtoken');
const config = require("../config");

router.route("/").post((req,res)=>{
    console.log("login hit",req.body);
   User.findOne({
    mobileNo:req.body.mobileNo,
   },(err,result)=>{
        if(err){
            return res.status(403).json({msg:"error happend"})
        }
        if(result!==null){
            sendToken(req.body.mobileNo,"Login Done",res);
        }
        else
        {
            res.json({msg:"register"})
        }
   })
})

router.route("/register").post((req,res)=>{
    console.log(req.body);
    const user=new User({
        mobileNo:req.body.mobileNo,
        password:req.body.password,
        fullName:req.body.email,
        email:req.body.mobileNo,
        gender:req.body.gender,
        alterateMoNumber:req.body.alterateMoNumber,
        hintName:req.body.hintName,
    });
    user
        .save()
        .then(() => {
        sendToken(req.body.mobileNo,"Registration Done",res);
    }).catch((err) => {
         res.status(500).json({token:err,msg:"Error"})
    });
})


const sendToken=(mobileNo,msg,res)=>{
    let token=jwt.sign({mobileNo:mobileNo},config.key);
                res.json({token:token,msg:msg})
}

module.exports=router;






