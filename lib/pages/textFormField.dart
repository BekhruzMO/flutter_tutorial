import 'package:flutter/material.dart';

class TextFormFieldPage extends StatefulWidget {
  static final String id = 'textFormField';

  const TextFormFieldPage({Key? key}) : super(key: key);

  @override
  _TextFormFieldPageState createState() => _TextFormFieldPageState();
}

class _TextFormFieldPageState extends State<TextFormFieldPage> {
  final _formKey = GlobalKey<FormState>();
  String? _email='', _name='';

  _diSign(){
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
  }}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFormField'),
      ),
      body: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 30, 10, 20),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Email',
                      labelText: 'Email *',
                    ),
                    onSaved: (String? value) {
                      _email = value;
                    },
                    validator: (String? value) {
                      return (value != null && !value.contains('@'))
                          ? 'Email manzilda @ belgisi bolishi shart'
                          : 'Corrext';
                    },
                  )),
              MaterialButton(

                    color: Colors.blue,
                textColor: Colors.lightGreenAccent,
                child: Text('Sign in',style: TextStyle(),),
                onPressed: (){
                  _diSign();
                }


              )
            ],
          )),
    );
  }
}
