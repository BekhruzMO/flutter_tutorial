import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/align_page.dart';
import 'package:flutter_tutorial/pages/container_page.dart';
import 'package:flutter_tutorial/pages/drawer_page.dart';
import 'package:flutter_tutorial/pages/flutter.dart';
import 'package:flutter_tutorial/pages/gesture_detector.dart';
import 'package:flutter_tutorial/pages/home_page.dart';
import 'package:flutter_tutorial/pages/list_view.dart';
import 'package:flutter_tutorial/pages/page_view.dart';
import 'package:flutter_tutorial/pages/textFormField.dart';
import 'package:flutter_tutorial/pages/textfield_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),

      routes: {
        HomePage.id:(context)=>HomePage(),
        DrawerPage.id:(context)=>DrawerPage(),
        ListViewPage.id:(context)=>ListViewPage(),
        PageViewPage.id:(context)=>PageViewPage(),
        ContainerPage.id:(context) => ContainerPage(),
        GestureDetectorPage.id:(context)=>GestureDetectorPage(),
        TextFieldPage.id:(context)=>TextFieldPage(),
        FlutterPage.id:(context)=>FlutterPage(),
        TextFormFieldPage.id:(context) =>TextFormFieldPage(),
        AlignPage.id:(context) => AlignPage()

      },
    );
  }
}

