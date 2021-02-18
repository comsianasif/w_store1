import 'package:flutter/material.dart';
class CustomButtonDark extends StatelessWidget {
  final String text;
  final String image;
  final String routeName;
 // final VoidCallback onTap;
  CustomButtonDark({
    this.routeName,
    @required this.text,
    @required this.image,
  //  @required this.onTap,
});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
Navigator.pushNamed(context, routeName);
      },
      child: Container(
        width: 100,
        height: 94,
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
        child: Container(
          width: 97,
          height: 94,
          decoration: BoxDecoration(
            image: new DecorationImage(
                image: new AssetImage(image)),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(36,52,65,1.0),
                blurRadius: 5,
                offset: Offset(-10, -10),
                spreadRadius: 5,
              ),
              BoxShadow(
                color: Colors.grey.withOpacity(0.04),
                blurRadius: 5,
                offset: Offset(5, 5),
                spreadRadius: 5,
              ),

            ],

          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30,top: 80),
            child: Text(text,
              style: TextStyle(
                  color: Color.fromRGBO(10,255,239,0.5),
                  fontSize: 8
              ),
            ),
          ),
        ),
      ),


    );
  }
}
