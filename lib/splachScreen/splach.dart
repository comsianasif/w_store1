
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:w_store/Screens/login/loginLight.dart';

//
class SplachScreen extends StatefulWidget {
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToLogin();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LightLogin()));

  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(

        statusBarColor: Colors.white,

      )
    );
    var screensize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(

          body: Container(
            width: screensize.width,
            height: screensize.height,

            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 250, left: 20, right: 20),
                    child: Container(
                      height: screensize.height * 0.3,
                      width: screensize.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        image: DecorationImage(
                          image: const AssetImage('assets/images/wStore_logo_2.png'),
                          // fit: BoxFit.fill,
                        ),
                        ),
                    ),
                  ),

                ],
              ),
            ),
          )),
    );
  }
}

