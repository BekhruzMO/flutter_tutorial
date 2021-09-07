import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  static final String id = 'textfield_page';

  const TextFieldPage({Key? key}) : super(key: key);

  @override
  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.black87,
                    width: 1,
                  )),
              child: TextField(
                  onChanged: (value) {},
                  onTap: () {},
                  //controller: TextEditingController.fromValue('@'),

                  style: TextStyle(color: Colors.grey, fontSize: 22),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone_android,
                      size: 24,
                      color: Colors.grey,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye,
                        size: 24, color: Colors.grey),
                    hintText: 'Enter your e-mail',
                    hintStyle: TextStyle(fontSize: 12),
                    border: InputBorder.none,

                  )),
            ),
            SizedBox(width: 20,),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.padding),
                prefixIcon: Icon(Icons.person,color: Colors.grey,size: 32,),
                hintText: 'Name',
                labelText: 'label',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(width: 20, color: Colors.lightGreenAccent),
                  //gapPadding: 20,

                )

                )

              ),


            Image(image: AssetImage('assets/images/textField.png'),),
          ],
        ),
      ),
    );
  }
}
