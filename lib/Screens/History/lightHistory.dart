import 'package:flutter/material.dart';
import 'package:w_store/Model%20Class/ListOfModel.dart';
import 'package:w_store/Utils/Cuatomnaviagtion.dart';
import 'package:w_store/Utils/LightHistoryList.dart';

class LightHistory extends StatefulWidget {
  @override
  _LightHistoryState createState() => _LightHistoryState();
}

class _LightHistoryState extends State<LightHistory> {


  List<ListOfItem> listof=[
    ListOfItem(
        'assets/images/light/Группа масок 3.png',
        'Pharmacy',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        5
    ),
    ListOfItem(
        'assets/images/light/210e81d267f3690cde8484bab5ee63b0.png',
        'Bakery',
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
        'assets/images/light/Группа масок 5.png',
        'Clothing Store',
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
        4
    ),
    ListOfItem(
        'assets/images/light/Группа масок 6.png',
        'Toy Store',
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
        child:Scaffold(
          bottomNavigationBar: CustomNavigation(),
          body: Container(
            height: screensize.height,
            width: screensize.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 255, 255, 0.5),
                    Color.fromRGBO(255, 255, 255, 0.64),
                    Color.fromRGBO(255, 255, 255, 0.5),
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
                  padding: const EdgeInsets.only(left: 90,top: 10),
                  child: Row(
                    children: [
                      Text('History',style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                          fontWeight: FontWeight.bold

                      ),),
                    ],
                  ),
                ),
                Text('Today',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 13
                ),
                ),
              LightHistoryList(list2: listof,)
              ],
            ),
          ),
        ) );
  }
}
