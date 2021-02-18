import 'package:flutter/material.dart';
class CustomButtonCard extends StatelessWidget {
final String text;
  final String image;
  //final VoidCallback onTap;
  final String routeName;
 CustomButtonCard(

  {
    this.routeName,
    @required this.text,
 @required this.image,
   // @required this.onTap,

}
     );

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
                 child: Container(
                   width: 92,
                   height: 88,
                   decoration: BoxDecoration(
                     image: new DecorationImage(
                         image: new AssetImage(image)),
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
                   child: Padding(
                     padding: const EdgeInsets.only(left: 0,top: 80),
                     child: Center(
                       child: Text(text,
                       style: TextStyle(
                         color:Colors.grey.shade700,
                         fontSize: 8
                       ),
                       ),
                     ),
                   ),
                 ),
               ),


    );
  }
}
