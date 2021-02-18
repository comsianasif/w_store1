import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:w_store/Screens/Search/lightSearch.dart';
import 'package:w_store/Screens/signup/lightSignUp.dart';
import 'package:w_store/bloc/Firebae/firebase.dart';
import 'package:w_store/bloc/Login/loginvalidation.dart';
import 'package:w_store/bloc/validation.dart';
class LightLogin extends StatefulWidget {
  @override
  _LightLoginState createState() => _LightLoginState();
}

class _LightLoginState extends State<LightLogin> {
  String _email, _password;
  GlobalKey <FormState> _formKey=GlobalKey<FormState>();
  final valid =ValidationItem();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
  //  final bloc=Provider.of<LoginBloc>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        //main container
        body: Container(
          width: screensize.width,
          height: screensize.height,
          color: Colors.white,
          // singlechild scroll view
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50,),
                    child: Center(
                      child: Container(
                        height: 60,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          image: DecorationImage(
                            image: const AssetImage('assets/images/light/Lightlogin.png'),
                            // fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Welcome to W Store",
                      style:TextStyle(
                              color: Colors.black87.withOpacity(0.5),
                        fontSize: 27,
                        fontWeight: FontWeight.bold,

                      ) ,),
                  ),
                  Text('We find your place for shopping',
                            style: TextStyle(
                              color: Colors.black87.withOpacity(0.5),
                              fontSize: 17,
                              fontWeight: FontWeight.normal
                            )

                  ),
                  Image.asset('assets/images/light/Сгруппировать_475 (1).png'),
                       Container(
                         width: 286,
                         height: 51,

                         decoration: BoxDecoration(
                           color: Colors.white,
                          // color: Colors.white.withOpacity(0.07),
                           borderRadius: BorderRadius.all(Radius.circular(25)),

                           boxShadow: [
                             BoxShadow(
                               color: Colors.grey.withOpacity(0.07),
                               blurRadius: 5,
                               offset: Offset(0, 2),
                               spreadRadius: 2,
                             ),

                           ],

                         ),
                         child: Padding(
                           padding: const EdgeInsets.only(left: 20),
                           child:
                                 TextFormField(
                                   controller: emailController,
                                   validator:valid.emailValidation ,
                               keyboardType: TextInputType.text,
                               onSaved: (input)=>_email=input,
                               style: TextStyle(
                                   color: Colors.grey[800], fontSize: 17),
                               decoration: InputDecoration(
                                 border: InputBorder.none,
                                 hintText: 'Enter your Email',

                                 hintStyle: TextStyle(
                                   fontSize: 12,
                                   color: Colors.grey,
                                 ),
                                 // labelStyle: TextStyle(color: Colors.black26),
                                 //   hoverColor: Colors.black26,
                               ),

                             ),
                           ),
                         ),

                      SizedBox(height: 5,),
                  Container(
                    width: 286,
                    height: 51,

                    decoration: BoxDecoration(
                      color: Colors.white,
                       // border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(20)),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.07),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                          spreadRadius: 2,
                        ),

                      ],

                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextFormField(
                        controller: passwordController,
                            validator: valid.passwordValidation,
                            onSaved:(input)=> _password=input,
                            obscureText: true,
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(
                                color: Colors.grey[800], fontSize: 17),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                            //  errorText: snapshot.error,
                              hintStyle: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                              // labelStyle: TextStyle(color: Colors.black26),
                              //   hoverColor: Colors.black26,
                            ),

                          )

                      ),
                    ),

                  SizedBox(height: 5,),
                  Container(
                    height: 20,
                    width: 286,
                    decoration: BoxDecoration(
                     //   border: Border.all(color: Colors.white),
                    //  color: Colors.white.withOpacity(0.07),
                      borderRadius: BorderRadius.all(Radius.circular(16)),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.04),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                          spreadRadius: 1,
                        ),

                      ],

                    ),
                    child: FlatButton(onPressed: null,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '  Forgot password?',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10
                            ),
                          ),
                        )),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 51,
                    width: 286,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      color: Colors.blue.withOpacity(0.9),
                      borderRadius: BorderRadius.all(Radius.circular(20)),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.07),
                          blurRadius: 5,
                          offset: Offset(0, 2),
                          spreadRadius: 1,
                        ),

                      ],
                    ),
                     child: FlatButton(

                         onPressed:
                             (){
                                  signIn();
                               debugPrint('Click on the submitted button ');


                           }
                           ,
                           child:Text(
                             'Submit',
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 17
                             ),
                           ) ,
                         )

                     ),
             //     ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // google login button
                      InkWell(
                        child: Container(
                          height: 60,
                          width: 140,
                          decoration: BoxDecoration(
                              image: new DecorationImage(
                                  image: new AssetImage("assets/images/light/Сгруппировать_476.png")),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.07),
                                blurRadius: 5,
                                offset: Offset(0, 2),
                                spreadRadius: 1,
                              ),

                            ]

                          ),

                        ),
                        onTap: (){
                          debugPrint('Click on the google login ');
                        }

                      ),
                        SizedBox(width: 2.5,),
                        // facebook button
                      InkWell(
                        onTap: (){
                          debugPrint('Click on the Facebook Login');
                        },
                        child: Container(
                          height: 60,
                          width: 140,
                          decoration: BoxDecoration(
                            image: new DecorationImage(
                                image: new AssetImage("assets/images/light/facebook.png")),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,

                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.07),
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                  spreadRadius: 1,
                                ),

                              ]

                          ),

                          ),

                        ),

                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.7),
                        fontSize: 17,
                      ),
                      ),
                       SizedBox(width: 2.5,),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(builder: (BuildContext context) => LightSignUp()));
                          debugPrint('Click on the Sign Up Text');
                        },
                        child: Text('Sign Up',
                        style: TextStyle(
                          color: Colors.red.withOpacity(0.7),
                          fontSize: 17
                        ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 30,),
                ],
              ),


            ),
          ),

        ),
      ),
    );


  }
  void signIn(){
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      context.read<AuthenticationService>().signIn(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Navigator.push(context, MaterialPageRoute(builder:(context)=> LightSearch()));
    }
  }

}
