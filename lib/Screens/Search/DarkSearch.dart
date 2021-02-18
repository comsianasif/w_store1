import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w_store/Utils/Cuatomnaviagtion.dart';
import 'package:w_store/Utils/CustomButtonDark.dart';


class DarkSearch extends StatefulWidget {
  @override
  _DarkSearchState createState() => _DarkSearchState();
}

class _DarkSearchState extends State<DarkSearch> {

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    var screensize = MediaQuery.of(context).size;
    return SafeArea(
child: Scaffold(
  backgroundColor: Color.fromRGBO(36,52,65,1),
             bottomNavigationBar: CustomNavigation(),
  body:Container(
    width: screensize.width,
    height: screensize.height,
    color: Color.fromRGBO(36,52,65,1),
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
      width: 300,
      height: 58,
      decoration: BoxDecoration(

        color: Color.fromRGBO(36,52,65,1),
        // color: Colors.white.withOpacity(0.07),
        borderRadius: BorderRadius.all(Radius.circular(20)),

        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(36,52,65,1.0),
            blurRadius: 5,
            offset: Offset(-10, -10),
            spreadRadius: 5,
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            offset: Offset(0, 0),
            spreadRadius: 5,
          ),

        ],

      ),
      child:  Container(
          width:295 ,
          height: 58,
          decoration: BoxDecoration(
            //color: Color.fromRGBO(36,52,65,1),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(36,52,65,1.0),
                blurRadius: 5,
                offset: Offset(-10, -10),
                spreadRadius: 5,
              ),
              BoxShadow(
                color: Colors.grey.withOpacity(0.01),
                blurRadius: 5,
                offset: Offset(5, 5),
                spreadRadius: 5,
              ),

            ],

          ),
        child: Row(
children: [
  Padding(
    padding: const EdgeInsets.only(left: 15),
    child: ImageIcon(
      AssetImage('assets/images/drak/search.png'),
      size: 25,
      color: Color.fromRGBO(10,255,239,0.5),
    ),
  ),
  SizedBox(width: 5,),

  // TextField(
  //
  //   keyboardType: TextInputType.text,
  //   style: TextStyle(
  //       color: Colors.grey[800], fontSize: 17),
  //   decoration: InputDecoration(
  //     alignLabelWithHint: true,
  //     border: InputBorder.none,
  //     hintText: 'What are you ',
  //     hintStyle: TextStyle(
  //       fontSize: 5,
  //       color: Color.fromRGBO(10,255,239,0.5),
  //     ),
  //     // labelStyle: TextStyle(color: Colors.black26),
  //     //   hoverColor: Colors.black26,
  //   ),
  //
  // )

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
                               padding: const EdgeInsets.only(left: 30),
                               child: CustomButtonDark(text: 'Supermarket',
                                   image: 'assets/images/drak/shopping-shop-store-market-booth.png',
                                   //onTap: null
                                 routeName: '/DarkGrossyStore',
                                 ),
                             ),
                             SizedBox(width: 20,),
                             CustomButtonDark(text: 'Pharmacy',
                                 image: 'assets/images/drak/medicine.png',
                            routeName: '/DarkPharmacy',
                                // onTap: null
                             ),
                             SizedBox(width: 20,),
                             CustomButtonDark(text: 'Bakery',
                                 image: 'assets/images/drak/baker.png',
                                 routeName: '/DarkBakery',
                                // onTap: null
                             ),
                           ],
                         ),
                         SizedBox(height: 40,),
                         Row(
                             crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 30),
                               child: CustomButtonDark(text: 'Book Shop',
                                   image: 'assets/images/drak/Bookshelves-library-study-education-book store.png',
                                 //  onTap: null
                                 routeName: '/DarkBook',
                               ),
                             ),
                             SizedBox(width: 20,),
                             CustomButtonDark(text: 'Cloth Store',
                                 image: 'assets/images/drak/fashion.png',
                                 routeName: '/DarkClothes',
                               //  onTap: null
                             ),
                             SizedBox(width: 20,),
                             CustomButtonDark(text: 'Toys Store',
                                 image: 'assets/images/drak/toys.png',
                              routeName: '/DarkToys',
                              //   onTap: null
                             ),
                           ],
                         ),
                         SizedBox(height: 60,),
                       ],
                     ),
                   ),
  )


),
    );
  }
}
