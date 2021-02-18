
 import 'dart:async';

mixin Validator{

  // email validation
   var emailVlaidator=StreamTransformer<String, String>.fromHandlers(
     handleData: (email,sink){
       if(email.isEmpty){
         return sink.addError('Field is not Empty');
       }

       if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email))
       {
 return sink.addError('Please Enter valid Email');
       }
       else{
         return sink.add(email);
       }
     }
   );


   // password validation
   var passwordValidator=StreamTransformer<String, String>.fromHandlers(
       handleData: (password,sink){
         if(password.isEmpty){
           return sink.addError('Field is not Empty');
         }
         if(password.length<6){
           return sink.addError('Password is  less than 6');
         }

         else{
           return sink.add(password);
         }
       }
   );

//username Validation
  var nameValidator=StreamTransformer<String, String>.fromHandlers(
      handleData: (username,sink){
        if(username.isEmpty){
          return sink.addError('Field is not Empty');
        }
        if(username.length<3){
          return sink.addError('UserName is not less than 3');
        }
          if (username.length>32){
            return sink.addError('Your name is greater than 32');
          }

        else{
          return sink.add(username);
        }
      }
  );

}



















