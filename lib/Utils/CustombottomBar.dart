
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomBottomBar extends StatefulWidget {

  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;
  //conssture
  CustomBottomBar({

    this.defaultSelectedIndex = 0,
    @required this.iconList,
    @required this.onChange
  });

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Row(
        children: _navBarItemList,
      ),
    );
  }
  @override
  Widget buildNavBarItem(IconData icon, int index) {
    var screensize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 56,
        width: screensize.width/ _iconList.length,
        decoration: index == _selectedIndex
            ? BoxDecoration(
          border: Border(
            //  bottom: BorderSide(width: 4, color: Colors.green),
          ),
          // gradient: LinearGradient(colors: [
          //   Colors.green.withOpacity(0.3),
          //   Colors.green.withOpacity(0.015),
          // ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
          // color: index == _selectedItemIndex ? Colors.green : Colors.white,
        )
            : BoxDecoration(

            color: Color.fromRGBO(36, 52, 65, 1)),

        child:Icon(
            icon
        ),
        color: index == _selectedIndex ? Colors.blue[500]: Colors.grey,


      ),

    );
  }
}





