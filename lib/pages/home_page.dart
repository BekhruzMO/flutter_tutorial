import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/flutter.dart';

class HomePage extends StatefulWidget {

  static final String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color rang = Colors.blue;
bool bl = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
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
                    Text('   Dart     ',
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
                Navigator.pushNamed(context, FlutterPage.id);
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
                    Text('   Flutter',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),),)
                ],
              ),
            ),

          ],
        )



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
