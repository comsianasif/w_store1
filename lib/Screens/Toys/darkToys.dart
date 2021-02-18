import 'package:flutter/material.dart';
import 'package:w_store/Model%20Class/ListOfModel.dart';
import 'package:w_store/Utils/Cuatomnaviagtion.dart';
import 'package:w_store/Utils/darklistView.dart';
class DarkToys extends StatefulWidget {
  @override
  _DarkToysState createState() => _DarkToysState();
}

class _DarkToysState extends State<DarkToys> {
  List<ListOfItem> listof=[
    ListOfItem(
        'assets/images/light/Группа масок 6.png',
        'Toy Store',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        5
    ),
    ListOfItem(
        'assets/images/light/Группа масок 6.png',
        'Toy Store',
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
        4
    ),
    ListOfItem(
        'assets/images/light/Группа масок 6.png',
        'Toy Store',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        3
    ),
    ListOfItem(
        'assets/images/light/Группа масок 6.png',
        'Toy Store',
        '123 Main Street, New York, NY 10030',
        '500m away',
        '4 min',
        5
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
      child: Scaffold(
        backgroundColor:  Color.fromRGBO(36,52,65,1.0),

        bottomNavigationBar: CustomNavigation(),
        body: Container(
          width: screensize.width,
          height: screensize.height,
          color: Color.fromRGBO(36,52,65,1.0),
          child:Column(
            children: [
              Stack(
                children: [
                  Container (
                    width: screensize.width,
                    height: 210,
                    color: Color.fromRGBO(36,52,65,1.0),
                    child: Image(
                      image: AssetImage(
                          'assets/images/background/Сгруппировать 1544.png'),
                    ),

                  ),
                  IconButton(icon: Icon(Icons.arrow_back_ios_outlined),
                      iconSize: 30,
                      color: Colors.grey.shade800,
                      onPressed: ()=>Navigator.pop(context),
                  )
                ],

              ),
              Text('Toys Store',
                style: TextStyle(fontSize: 21,
                    color: Colors.grey.withOpacity(0.7)
                ),
              ),

              DarkList(listof)
            ],
          ),

        ),
      ),

    );
  }
}
