import 'package:flutter/material.dart';
import 'package:w_store/Model%20Class/ListOfModel.dart';
import 'package:w_store/Utils/Cuatomnaviagtion.dart';
import 'package:w_store/Utils/listview.dart';
class LightBookShop extends StatefulWidget {
  @override
  _LightBookShopState createState() => _LightBookShopState();
}

class _LightBookShopState extends State<LightBookShop> {

  List<ListOfItem> listof=[
    ListOfItem(
        'assets/images/light/Группа масок -6.png',
        'Book Store',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        5
    ),
    ListOfItem(
        'assets/images/light/Группа масок -6.png',
        'Book Store',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        4
    ),
    ListOfItem(
        'assets/images/light/Группа масок -6.png',
        'Book Store',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        4
    ),
    ListOfItem(
        'assets/images/light/Группа масок -6.png',
        'Book Store',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        3
    ),
    ListOfItem(
        'assets/images/light/Группа масок -6.png',
        'Book Store',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        5
    ),
    ListOfItem(
        'assets/images/light/Группа масок -6.png',
        'Book Store',
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
                          'assets/images/background/Сгруппировать 1653.png'),
                    ),

                  ),
                  IconButton(icon: Icon(Icons.arrow_back_ios_outlined),
                      iconSize: 30,
                      color: Colors.black38,
                      onPressed: ()=>Navigator.pop(context),
                  )
                ],

              ),
              Text('Book Store',
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
