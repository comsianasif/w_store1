import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:w_store/Screens/Bookshop/DarkBookShop.dart';
import 'package:w_store/Screens/Bookshop/lightbookShop.dart';
import 'package:w_store/Screens/Grossrystore/DarkGosarryStore.dart';
import 'package:w_store/Screens/Grossrystore/lightGrosartStore.dart';
import 'package:w_store/Screens/History/lightHistory.dart';
import 'package:w_store/Screens/Registration/DarkRegistration.dart';
import 'package:w_store/Screens/Registration/lightRegistration.dart';
import 'package:w_store/Screens/Search/DarkSearch.dart';
import 'package:w_store/Screens/Search/lightSearch.dart';
import 'package:w_store/Screens/Setting/DarkSetting.dart';
import 'package:w_store/Screens/Setting/lightSetting.dart';
import 'package:w_store/Screens/Theme/darkTheme.dart';
import 'package:w_store/Screens/Theme/lightThweme.dart';
import 'package:w_store/Screens/Toys/darkToys.dart';
import 'package:w_store/Screens/Toys/lightToys.dart';
import 'package:w_store/Screens/bakery/DarkBakery.dart';
import 'package:w_store/Screens/bakery/lightBakery.dart';
import 'package:w_store/Screens/clothes/Darkclothes.dart';
import 'package:w_store/Screens/clothes/lightclothes.dart';
import 'package:w_store/Screens/login/loginLight.dart';
import 'package:w_store/Screens/login/logindark.dart';
import 'package:w_store/Screens/pharmacy/DarkPharmacy.dart';
import 'package:w_store/Screens/pharmacy/lightPharmacy.dart';
import 'package:w_store/Screens/signup/lightSignUp.dart';
import 'package:w_store/Utils/mapView.dart';

import 'package:w_store/Utils/testing.dart';

import 'package:w_store/splachScreen/splach.dart';

import 'Screens/History/Darkistory.dart';
import 'bloc/Firebae/firebase.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider<LoginBloc>(create: (context) =>LoginBloc()),
        // Provider<SignUpBloc>(create: (context) =>SignUpBloc()),
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthenticationService>().authStateChanges,
        //  create: (context) => context.<AuthenticationService>().authStateChanges,
        )

    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

        //  primarySwatch: Colors.blue,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
    //   home:SplachScreen(),
        initialRoute:'/',
        routes: {
          //splach screen

          '/':(context)=>SplachScreen(),
          //login screen
          '/LightLogin':(context)=>LightLogin(),
          '/darkLogin':(context)=>DarkLogin(),
          //signup screen
          '/signup':(context)=>LightSignUp(),
          //search screen
          '/LightSearch':(context)=>LightSearch(),
          '/DarkSearch':(context)=>DarkSearch(),
          //bakery screen
          '/LightBakery':(context)=>LightBakery(),
          '/DarkBakery':(context)=>DarkBakery(),
          //bookshopScreen
          '/LightBook':(context)=>LightBookShop(),
          '/DarkBook':(context)=>DarkBookShop(),
          //clothesScreen
          '/LightClothes':(context)=>LightClothes(),
          '/DarkClothes':(context)=>DarkClothes(),
          //Grossy storeScreen
          '/LightGrossyStore':(context)=>LightGrosarry(),
          '/DarkGrossyStore':(context)=>DarkGrocery(),
          //HistoryScreen
          '/LightHistory':(context)=>LightHistory(),
          '/DarkHistory':(context)=>DarkHistory(),
          //pharmacyScreen
          '/LightPharmacy':(context)=>LightPharmacy(),
          '/DarkPharmacy':(context)=>DarkPharmacy(),
             //RegistrationScreen
          '/LightRegistration':(context)=>LightRegistration(),
          '/DarkRegistration':(context)=>DarkRegistration(),
          //settingScreen
          '/LightSetting':(context)=>LightSetting(),
          '/DarkSetting':(context)=>DarkSetting(),
          //Themescreen
          '/LightTheme':(context)=>LightTheme(),
          '/DarkTheme':(context)=>DarkTheme(),
          //ToysScreen
          '/LightToys':(context)=>LightToys(),
          '/DarkToys':(context)=>DarkToys(),
        },
      ),
    );
  }
}



//
// class AuthenticationWrapper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final firebaseUser = context.watch<User>();
//
// // if(firebaseUser==null)
// //     {
// //       return LightSignUp();
// //     }
//     if (firebaseUser != null) {
//       return LightSearch();
//     }
//     return LightLogin() ;
//   }
// }