const jwt=require("jsonwebtoken");
const config = require("./config");
const checkToken=(req,res,next)=>{
    let token=req.headers["authorization"];
    token=token.slice(7,token.length);
    if(!token){
        return res.json({
            status:false,
            msg:"Token not provided"
        }) 
    }
    if(token){
        jwt.verify(token,config.key,(err,decoded)=>{
            if(err){
                return res.json({
                    status:false,
                    msg:"Invalid Token"
                })
            }else{
                req.decoded=decoded;
                next();
            }
        });
    }
    else{
        return res.json({
            status:false,
            msg:"Token not provided"
        }) 
    }

}
module.exports={
    checkToken:checkToken
}