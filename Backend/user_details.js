const express=require("express");
const middleware = require("./middleware");
const router=express.Router();
const User=require("./model/user.models")

router.route("/").get(middleware.checkToken,(req,res)=>{
    User.findOne({mobileNo:req.decoded.mobileNo},(err,result)=>{
        if (err) {
            return res.status(500).json({
                msg:"Success",
                result:err,
            })
        }else{
            return res.status(500).json({
                msg:"Success",
                result:result,
            })
        }
    });
})

module.exports=router;