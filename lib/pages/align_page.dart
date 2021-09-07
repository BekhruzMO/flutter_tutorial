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
      body: Align(
        alignment: FractionalOffset(0.5,0.1),
        child: Column(
            children: [
             Container(
                 alignment: Alignment(-1,0),
               color: Colors.red,
               child: Text('Alignment(0,0)',
               //textAlign: TextAlign.start,
                 ),
             ),
              Container(
                alignment: Alignment(0,0),
                child: Text('Alignment(0,0)'),
              ),


            ],
          ),

        ),

    );
  }
}
