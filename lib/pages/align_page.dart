import 'package:flutter/material.dart';

class AlignPage extends StatefulWidget {
  static final String id = 'align_page';

  const AlignPage({Key? key}) : super(key: key);

  @override
  _AlignPageState createState() => _AlignPageState();
}

class _AlignPageState extends State<AlignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment(-1, 0),
            child: Container(
              alignment: Alignment(-1, 0),
              height: 100,
              width: 180,
              color: Colors.red,
              child: Text(
                'Alignment(-1,0)',
                style: TextStyle(backgroundColor: Colors.lightGreen),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Container(
              alignment: Alignment(0, 0),
              height: 100,
              width: 180,
              color: Colors.red,
              child: Text(
                'Alignment(0,0)',
                style: TextStyle(
                    backgroundColor: Colors.lightGreen),
              ),
            ),
          ),
          Align(
            alignment: Alignment(1, 0),
            child: Container(
              alignment: Alignment(1, 0),
              height: 100,
              width: 180,
              color: Colors.red,
              child: Text(
                'Alignment(1,0)',
                style: TextStyle(backgroundColor: Colors.lightGreen),
              ),
            ),
          ),
          //SizedBox(height: 20,),
          Container(
              margin: EdgeInsets.all(10),
              child:Image(image: AssetImage('assets/images/alignment.png')))

        ],
      ),
    );
  }
}
