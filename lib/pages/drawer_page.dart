import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  static final String id = 'drawer_page';

  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {

  Text str = Text('class ', style: TextStyle(color: Colors.yellow),);
  Text str1 = Text('Color ', style: TextStyle(color: Colors.white),);
  Text str2 = Text('expanded ', style: TextStyle(color: Colors.lightGreenAccent[400]),);
  Text str3 = Text('StateLessWidget {', style: TextStyle(color: Colors.red),);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Page2'),
      ),
      drawer: Drawer(
        child: Column(

          children: [
            Container(

              padding: EdgeInsets.fromLTRB(15, 40, 10, 5),
              height: 200,
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    alignment: Alignment(-1,0),

                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(72),
                      child: Image(
                        image: AssetImage('assets/images/behruz.jpg'),
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 10, 5),
                    child: Text(
                      'Behruz Muhamadov',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ), //name
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 1, 10, 5),
                    child: Text(
                      'behruzmuhamadov92@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        //fontWeight: FontWeight.i,
                      ),
                    ),
                  ), //email
                ],
              ),
            ),
            TextButton(
              onPressed: (){},child:Container(
              padding: EdgeInsets.all(5),

              child: Row(
                children: [
                  Icon(
                    Icons.home,
                    size: 36,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),),
            TextButton(
              onPressed: (){},child:Container(
              padding: EdgeInsets.all(5),

              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 36,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),),
            TextButton(
        onPressed: (){},child:Container(
        padding: EdgeInsets.all(5),

              child: Row(
                children: [
                  Icon(
                    Icons.padding,
                    size: 36,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'About us',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),),
          ],
        ),
      ),

      body:Center(child:

      Container(
        alignment: Alignment(0,0),
        transform: Matrix4.rotationZ(0.2),
        //color: Colors.green,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            str,
            str1,
            str2,
            str3,

          ],
        ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(30),
            border: Border.all(
                color: Colors.black,
                width: 4
            ),
            color: Colors.blue,
          shape: BoxShape.circle,
        ),
      ),)
    );
  }
}




