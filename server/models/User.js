import mongoose, { mongo } from 'mongoose' ; 

const {Schema } = mongoose ; 

const UserSchema = new Schema ({
    firstname : String,
    lastname : String , 
    dateofjoin : Date.now ,
    email : { type : String , required : true , unique } , 
    password : {type : String , required : true},
        
})

const User = mongoose.model('User', UserSchema); 
export default User ; 


export  const register  = ( req, res ) =>{
          try {
               console.log( " register page called")     
            
          } catch (execption) {

          }
}