import 'package:flutter/material.dart';
import 'package:w_store/Model%20Class/ListOfModel.dart';
import 'package:w_store/Model%20Class/ListOfModel.dart';
import 'package:w_store/Utils/Cuatomnaviagtion.dart';
import 'package:w_store/Utils/listview.dart';
class LightGrosarry extends StatefulWidget {
  @override
  _LightGrosarryState createState() => _LightGrosarryState();
}

class _LightGrosarryState extends State<LightGrosarry> {

  List<ListOfItem> listof=[
    ListOfItem(
        'assets/images/light/grocery-grocer-the-grocery-store1.png',
        'Grocery Store',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        5
    ),
    ListOfItem(
        'assets/images/light/grocery-grocer-the-grocery-store1.png',
        'Grocery Store',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        4
    ),
    ListOfItem(
        'assets/images/light/grocery-grocer-the-grocery-store1.png',
        'Grocery Store',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        4
    ),
    ListOfItem(
        'assets/images/light/grocery-grocer-the-grocery-store1.png',
        'Grocery Store',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        3
    ),
    ListOfItem(
        'assets/images/light/grocery-grocer-the-grocery-store1.png',
        'Grocery Store',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        5
    ),
    ListOfItem(
        'assets/images/light/grocery-grocer-the-grocery-store1.png',
        'Grocery Store',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        5
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.7),

        bottomNavigationBar: CustomNavigation(),
        body: Container(
          width: screensize.width,
          height: screensize.height,
          color: Colors.white.withOpacity(0.7),
          child:Column(
            children: [
              Stack(
                children: [
                  Container (
                    width: screensize.width,
                    height: 210,
                      color:Colors.white.withOpacity(0.7),
                    child: Image(
                      image: AssetImage(
                          'assets/images/background/Сгруппировать 1026.png'),
                    ),

                  ),
                  IconButton(icon: Icon(Icons.arrow_back_ios_outlined),
                      iconSize: 30,
                      color: Colors.black38,
                      onPressed: ()=>Navigator.pop(context),
                  ),
                ],

              ),
              Text('Grocery Store',
                style: TextStyle(fontSize: 21,
                color: Colors.black87.withOpacity(0.5)
                ),
                  ),

            ListOfData(listof

            )
            ],
          ),

        ),
      ),

    );
  }
}
