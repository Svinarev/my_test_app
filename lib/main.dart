import 'package:app_test/screens/user_login_page.dart';
import 'package:flutter/material.dart';

import 'auth/auth.dart';
import 'global/global_function.dart';
import 'home_page/home_page.dart';
import 'screens/user_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute: '/Auth',
    routes: {
    '/Auth': (BuildContext context) => Auth(),
    '/HomePage': (BuildContext context) => HomePage(),
    // '/UserPage': (BuildContext context) => UserPage(),
    '/UserLoginPage': (BuildContext context) => UserLoginPage(),
    },
    );
  }
}


