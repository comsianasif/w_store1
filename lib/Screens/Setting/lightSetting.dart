import 'package:flutter/material.dart';
import 'package:w_store/Utils/Cuatomnaviagtion.dart';

class LightSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
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
                Color.fromRGBO(255, 255, 255, 1),
                Color.fromRGBO(255, 255, 255, 0.64),
                Color.fromRGBO(255, 255, 255, 0.5),
              ]
          ),
 // image: DecorationImage(image: AssetImage('assets/images/background/Screen Shot 2019-10-24 at 23.30.54.png'),
 // fit: BoxFit.fill
 //
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
              padding: const EdgeInsets.only(left: 90,top: 10),
              child: Row(
                children: [
                  Text('Setting',style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold

                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
              child: Container(
                width: screensize.width,
                height: 140,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(236, 236, 238, 1),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),

child: Row(
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        width: 95,
        height: 95,
        decoration: BoxDecoration(
          color: Color.fromRGBO(236, 236, 236, 0.5),
          image: DecorationImage(
            image: AssetImage('assets/images/background/Image 2.png')
            ,
            fit:  BoxFit.fill

          ),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
    ),
    SizedBox(width: 20,),
    Padding(
      padding: const EdgeInsets.only(top: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
               Text('Mike Wazowski',
                 style: TextStyle(
                   fontSize: 18,
                   color: Colors.black,
                 ),

               ),
          SizedBox(height: 10,),
          Text('New York city USA',
            style: TextStyle(
              fontSize: 11,
              color: Colors.black,
            ),

          ),
          SizedBox(height: 10,),
          Text('Total Visited Place:15',
            style: TextStyle(
              fontSize: 11,
              color: Colors.black,
            ),

          ),
      ],
      ),
    ),
  ],
),

              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 64,
                width: screensize.width,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Text('Profile',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
               //   fontWeight: FontWeight.bold
                  ),
                  ),
                ),

              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 64,
                width: screensize.width,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Text('Theme',
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.black,
                       // fontWeight: FontWeight.bold
                    ),
                  ),
                ),

              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                height: 64,
                width: screensize.width,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.7),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20),
                  child: Text('Language',
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.black,
                     //   fontWeight: FontWeight.bold
                    ),
                  ),
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
