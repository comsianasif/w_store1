import 'package:flutter/material.dart';
import 'package:w_store/Model%20Class/ListOfModel.dart';

class LightHistoryList extends StatefulWidget {
  final List<ListOfItem> list2;
  LightHistoryList( {
    this.list2
});
  @override
  _LightHistoryListState createState() => _LightHistoryListState();
}

class _LightHistoryListState extends State<LightHistoryList> {

  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:ListView.builder(

          padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
          itemCount:6,
          itemBuilder:(BuildContext context, int index) {
// ignore: missing_return
            ListOfItem listOfItem=widget.list2[index];
            return Stack(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      // color: Colors.white.withOpacity(0.07),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.07),
                          // blurRadius: 2,
                          offset: Offset(-5, -5),
                          // spreadRadius: 5,
                        ),
                        BoxShadow(
                          color: Colors.white.withOpacity(0.7),
                          // blurRadius: 2,
                          offset: Offset(5, 5),
                          // spreadRadius: 1,
                        ),

                      ],

                    ),


                    child: Container(
                      width:MediaQuery.of(context).size.width ,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        // color: Colors.white.withOpacity(0.07),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            // blurRadius: 5,
                            offset: Offset(-5, -5),
                            // spreadRadius: 5,
                          ),
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            // blurRadius: 5,
                            offset: Offset(5, 5),
                            // spreadRadius: 5,
                          ),

                        ],
                      ),
                      child: Row( children: [
                        Container(
                          width: 115,
                          height: 115,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                              image:  AssetImage(listOfItem.imagePath

                              ),

                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 10),
                          child: Column(
                            children: [
                              Text(listOfItem.nameOfStore,
                                style: TextStyle(
                                  color: Colors.grey.withOpacity(0.7),
                                  fontSize: 12,

                                ),
                              ),
                              _buildRatingStars(listOfItem.rating),
                              // _buildRatingStars(rating),
                              SizedBox(height: 15,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text( listOfItem.locationAddress,
                                  style: TextStyle(
                                    color: Colors.grey.withOpacity(0.5),
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  Text(listOfItem.locationDist,
                                    style: TextStyle(
                                        color: Colors.amber.withOpacity(0.5),
                                        fontSize: 10
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Text(listOfItem.locTime,
                                    style: TextStyle(
                                        color: Colors.amber.withOpacity(0.5),
                                        fontSize: 10
                                    ),
                                  )

                                ],
                              ),


                            ],
                          ),
                        )
                      ],),
                    )
                ),
              ],
            );
          }) ,
    );
  }
}
