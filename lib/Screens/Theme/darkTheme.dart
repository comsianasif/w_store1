import 'package:flutter/material.dart';
import 'package:w_store/Utils/Cuatomnaviagtion.dart';
class DarkTheme extends StatefulWidget {
  @override
  _DarkThemeState createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Scaffold(
        backgroundColor:    Colors.white,
        bottomNavigationBar: CustomNavigation(),
        body: Container(
          height: screensize.height,
          width: screensize.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(36, 52, 65, 1),
                  Color.fromRGBO(255, 255, 255, 0.8),
                  Color.fromRGBO(255, 255, 255, 0.7),
                ]
            ),
            // image: DecorationImage(image: AssetImage('assets/images/background/Screen Shot 2019-10-24 at 23.30.54.png'),
            //     fit: BoxFit.fill
            // ),

          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back_ios_outlined),
                        iconSize: 30,
                        color: Colors.black38,
                        onPressed: ()=>Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80,top: 10),
                child: Row(
                  children: [
                    Text('Theme',style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontWeight: FontWeight.bold

                    ),),
                    SizedBox(width: 140,),
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(242, 242, 242, 0.5),
                              Color.fromRGBO(213, 213, 220, 0.8),

                            ]
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(

                                  image: AssetImage('assets/images/background/Image 2.png'),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(top: 50,right: 30,left: 30),
                child: Container(
                  height: 64,
                  width: screensize.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(255,255,255,0.5),
                        // blurRadius: 5,
                        offset: Offset(-3, -3),
                        // spreadRadius: 5,
                      ),
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        // blurRadius: 5,
                        offset: Offset(3, 3),
                        // spreadRadius: 5,
                      ),

                    ],
                  ),
                  child: Row(
                    children: [
                      Container(

                        height: 62,
                        width: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(255,255,255,1.0),
                              // blurRadius: 5,
                              offset: Offset(-3, -3),
                              // spreadRadius: 5,
                            ),
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              // blurRadius: 5,
                              offset: Offset(3, 3),
                              // spreadRadius: 5,
                            ),

                          ],
                        ),
                      ),
                      SizedBox(width: 65,),
                      Center(
                        child: Text('Light Theme',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20,right: 30,left: 30),
                child: Container(
                  height: 64,
                  width: screensize.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(255,255,255,0.5),
                        // blurRadius: 5,
                        offset: Offset(-3, -3),
                        // spreadRadius: 5,
                      ),
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        // blurRadius: 5,
                        offset: Offset(3, 3),
                        // spreadRadius: 5,
                      ),

                    ],
                  ),
                  child: Row(
                    children: [
                      Container(

                        height: 62,
                        width: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromRGBO(36, 52, 65, 1.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              // blurRadius: 5,
                              offset: Offset(-3, -3),
                              // spreadRadius: 5,
                            ),
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              // blurRadius: 5,
                              offset: Offset(3, 3),
                              // spreadRadius: 5,
                            ),

                          ],
                        ),
                      ),
                      SizedBox(width: 65,),
                      Center(
                        child: Text('Dark Theme',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
