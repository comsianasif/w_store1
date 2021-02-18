import 'package:flutter/material.dart';
class CustomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width/4,
      color: Color.fromRGBO(36,52,65,1),
      child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: GestureDetector(
                child: ImageIcon
                  (AssetImage(
                    "assets/images/icons/home-icon-silhouette.png"),
                size: 35,
                  color: Colors.white,
                )),
          ),
          SizedBox(width: 40,),
          GestureDetector(
              child: ImageIcon(
                  AssetImage(
                      "assets/images/icons/location.png"),
                size: 35,
                color: Colors.white,
              )),
          SizedBox(width: 40,),
          GestureDetector(child:
          ImageIcon(AssetImage(
              "assets/images/icons/history.png"),
            size: 35,
            color: Colors.white,
          )),
          SizedBox(width: 40,),
          GestureDetector(child:
          ImageIcon(AssetImage(
              "assets/images/icons/XMLID_2171_.png"),
            size: 35,
            color: Colors.white,
          )),

        ],
      ),
    );
  }
}

