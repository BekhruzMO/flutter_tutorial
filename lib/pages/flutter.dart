import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/align_page.dart';
import 'package:flutter_tutorial/pages/container_page.dart';
import 'package:flutter_tutorial/pages/drawer_page.dart';
import 'package:flutter_tutorial/pages/gesture_detector.dart';
import 'package:flutter_tutorial/pages/page_view.dart';
import 'package:flutter_tutorial/pages/textFormField.dart';
import 'package:flutter_tutorial/pages/textfield_page.dart';

class FlutterPage extends StatefulWidget {
  static final String id = 'flutter';
  const FlutterPage({Key? key}) : super(key: key);

  @override
  _FlutterPageState createState() => _FlutterPageState();
}

class _FlutterPageState extends State<FlutterPage> {

  final textKey = GlobalKey();

  Color rang = Colors.blue;
  bool bl = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: ListView(
          padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
        children: [
          MaterialButton(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),

            color: rang,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
            ),

            onPressed: (){
              setState(() {
                bl=!bl;
                if(bl){rang = _getColor();}
                else rang = _getColor2();
                Navigator.pushNamed(context, ContainerPage.id);
              });
            },

            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child:Image(image: AssetImage('assets/images/dart.png'),
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    )
                ) ,
                SizedBox(width: 20,),
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                  //color: Colors.white,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(25) ),
                      color: Colors.white
                  ),
                  child:
                  Text('Container',
                    style: TextStyle(
                        color: rang,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),),)
              ],
            ),
          ),
          SizedBox(height: 35,),
          MaterialButton(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
            ),

            onPressed: (){
              Navigator.pushNamed(context, GestureDetectorPage.id);
            },

            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child:Image(image: AssetImage('assets/images/flutter4.png'),
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    )
                ) ,
                SizedBox(width: 20,),
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                  //color: Colors.white,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(25) ),
                      color: Colors.white
                  ),
                  child:
                  Text('GestureDetector',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),),)
              ],
            ),
          ),
          SizedBox(height: 35,),
          MaterialButton(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
            ),

            onPressed: (){
              Navigator.pushNamed(context, TextFieldPage.id);
            },

            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child:Image(image: AssetImage('assets/images/flutter4.png'),
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    )
                ) ,
                SizedBox(width: 20,),
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                  //color: Colors.white,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(25) ),
                      color: Colors.white
                  ),
                  child:
                  Text('TextField',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),),)
              ],
            ),
          ),
          SizedBox(height: 35,),
          MaterialButton(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
            ),

            onPressed: (){
              Navigator.pushNamed(context, PageViewPage.id);
            },

            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child:Image(image: AssetImage('assets/images/flutter4.png'),
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    )
                ) ,
                SizedBox(width: 20,),
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                  //color: Colors.white,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(25) ),
                      color: Colors.white
                  ),
                  child:
                  Text('PageView',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),),)
              ],
            ),
          ),
          SizedBox(height: 35,),
          MaterialButton(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
            ),

            onPressed: (){
              Navigator.pushNamed(context, DrawerPage.id);
            },

            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child:Image(image: AssetImage('assets/images/flutter4.png'),
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    )
                ) ,
                SizedBox(width: 20,),
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                  //color: Colors.white,
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(25) ),
                      color: Colors.white
                  ),
                  child:
                  Text(

                    'Drawer',
                    key:Key('textKey'),
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),),)
              ],
            ),
          ),
          SizedBox(height: 35,),
          MaterialButton(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
            ),

            onPressed: (){
              Navigator.pushNamed(context, TextFormFieldPage.id);
            },

            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child:Image(image: AssetImage('assets/images/flutter4.png'),
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    )
                ) ,
                SizedBox(width: 20,),
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(25) ),
                      color: Colors.white
                  ),
                  child:
                  Text('TextFormField',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),),)
              ],
            ),
          ),
          SizedBox(height: 35,),
          MaterialButton(
            padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
            ),

            onPressed: (){
              Navigator.pushNamed(context, AlignPage.id);
            },

            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child:Image(image: AssetImage('assets/images/flutter4.png'),
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    )
                ) ,
                SizedBox(width: 20,),
                Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(25) ),
                      color: Colors.white
                  ),
                  child:
                  Text('Align',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),),)
              ],
            ),
          ),

        ],


        ),

    );
  }
}

Color _getColor(){

  return Colors.amber;
}

Color _getColor2(){

  return Colors.lightGreenAccent;
}

