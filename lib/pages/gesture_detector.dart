import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  static final String id = 'gesture_detector';

  const GestureDetectorPage({Key? key}) : super(key: key);

  @override
  _GestureDetectorPageState createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child:Center(child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Text(
                'Click me',
                style: TextStyle(color: Colors.blue, fontSize: 32),
              ),
              onTap: () {
                _showMyDialog(context, 'Text');
              },
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
                child: Container(
                    width: 250,
                    height: 86,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'This is container, click it',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )),
                onTap: () {
                  _showMyDialog(context, 'Container');
                }),
            SizedBox(
              height: 40,
            ),

            Image(image: AssetImage('assets/images/gestureCode.png'),
            fit: BoxFit.cover,)
          ],
        ),)
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context, title) async {
  String str = 'Siz $title widgetini bosdingiz';
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(str),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text("GestureDetector() ni qo'llash orqali har "
                  "qanday widgetdan button sifatida foydalanish mumkin."),
              //Text('Would you like to approve of this message?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Tushunarli'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
