import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/textFormField.dart';

class SignUpPage extends StatefulWidget {

  static final String id = 'sign_up_page';
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final _formKey = GlobalKey<FormState>();

  _doSignIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }
  String _email = '', _pass = '', _name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Instagram', style: TextStyle(fontSize: 42,),
            ),
            Padding(padding: EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
                validator: (input) =>
                input!.contains('123') ? 'Not correct name' : null,
                onSaved: (input) => _name = input!,
              ),),
            Padding(padding: EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
                validator: (input) =>
                !input!.contains('@')
                    ? 'Not correct email'
                    : null,
                onSaved: (input) => _email = input!,
              ),),
            Padding(padding: EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                validator: (input) =>
                input!.length < 6 ? 'Not correct pass' : null,
                onSaved: (input) => _pass = input!,
              ),),
            Padding(padding: EdgeInsets.only(left: 30, right: 30),
              child: MaterialButton(
                  child: Text('Log in'),
                  color: Colors.blue,
                  minWidth: double.infinity,
                  onPressed: () {
                    _doSignIn();
                  }),),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an accaunt?"),
                  SizedBox(width: 20,),
                  GestureDetector(
                    child: Text('Log in', style: TextStyle(fontWeight: FontWeight.bold),),
                    onTap: (){Navigator.pushReplacementNamed(context, TextFormFieldPage.id);},
                  )
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
