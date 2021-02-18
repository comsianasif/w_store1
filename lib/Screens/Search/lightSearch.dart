import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w_store/Utils/Cuatomnaviagtion.dart';
import 'package:w_store/Utils/CustomCardLight.dart';

class LightSearch extends StatefulWidget {
  @override
  _LightSearchState createState() => _LightSearchState();
}

class _LightSearchState extends State<LightSearch> {
  @override
  Widget build(BuildContext context) {


    var screensize = MediaQuery
        .of(context)
        .size;
    return SafeArea(
      child: Scaffold(
           bottomNavigationBar: CustomNavigation(),


      body: Container(
        width: screensize.width,
        height: screensize.height,
        color: Colors.white.withOpacity(0.07),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Container(
                  width: 193,
                  height: 38,
                  child: Image.asset('assets/images/light/logoonSearch.png'),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 304,
                height: 220,
                child: Image.asset('assets/images/light/home1.png'),
              ),
              SizedBox(height: 25,),
              Container(
                width: 320,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  // color: Colors.white.withOpacity(0.07),
                  borderRadius: BorderRadius.all(Radius.circular(20)),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.07),
                      blurRadius: 5,
                      offset: Offset(-10, -10),
                      spreadRadius: 5,
                    ),
                    BoxShadow(
                      color: Colors.white.withOpacity(0.7),
                      blurRadius: 5,
                      offset: Offset(10, 10),
                      spreadRadius: 5,
                    ),

                  ],

                ),
                child:
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.07),
                        blurRadius: 2,
                        offset: Offset(-5, -5),
                        spreadRadius: 5,
                      ),
                      BoxShadow(
                        color: Colors.white.withOpacity(0.7),
                        blurRadius: 5,
                        offset: Offset(10, 10),
                        spreadRadius: 5,
                      ),

                    ],

                  ),
                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Image.asset('assets/images/light/search.png'),
                      ),
                      // Image.asset(
                      //     'assets/images/light/What_are_you_looking_for,_Mike_.png'),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.text,
                          style: TextStyle(
                              color: Colors.grey[800], fontSize: 17),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'What_are_you_looking_for,Mike',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            // labelStyle: TextStyle(color: Colors.black26),
                            //   hoverColor: Colors.black26,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: CustomButtonCard(
                      routeName:'/LightGrossyStore' ,
                     // onTap: ()=>Navigator.pushNamed(context, '/LightGrossyStore'),
                      image: "assets/images/light/shopping-shop-store-market-booth (1).png",
                      text: 'Supermarket',
                    ),
                  ),
                  SizedBox(width: 20,),
                  CustomButtonCard(
                    routeName: '/LightPharmacy',
                  //  onTap: ()=>Navigator.pushNamed(context,'/LightPharmacy' ),
                    image: "assets/images/light/medicine.png",
                    text: 'Pharmacy',
                  ),
                  SizedBox(width: 20,),
                  CustomButtonCard(
                    routeName: '/LightBakery',
                  //  onTap: ()=>Navigator.pushNamed(context, '/LightBakery'),
                    image: "assets/images/light/baker.png",
                    text: 'Bakery',
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: CustomButtonCard(
                      routeName:'/LightBook' ,
                   //   onTap: ()=>Navigator.pushNamed(context, '/LightBook'),
                      image: "assets/images/light/Bookshelves-library-study-education-book store.png",
                      text: 'Book Shop',
                    ),
                  ),
                  SizedBox(width: 20,),
                  CustomButtonCard(
                    routeName:'/LightClothes' ,
                   // onTap: ()=>Navigator.pushNamed(context, '/LightClothes'),
                    image: "assets/images/light/fashion.png",
                    text: 'Clothes Store',
                  ),
                  SizedBox(width: 20,),
                  CustomButtonCard(
                    routeName:'/LightToys' ,
                   // onTap: ()=>Navigator.pushNamed(context, '/LightToys'),
                    image: "assets/images/light/toys.png",
                    text: 'Toys Store',
                  ),
                ],
              ),
              SizedBox(height: 60,),

            ],
          ),
        ),
      ),
      ),
    );
  }
}