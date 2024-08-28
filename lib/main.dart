import 'package:flutter/material.dart';
import 'package:test_doctor/homeScreen.dart';
import 'package:test_doctor/subject/subject_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.routeName: (context) => HomePage(),
          SubjectScreenPage.routeName: (context) => SubjectScreenPage(),
        },
        initialRoute: SubjectScreenPage.routeName
        //HomePage.routeName ,

        );
  }
}
