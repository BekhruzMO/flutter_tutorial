import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  static final String id = 'list_view';
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _getWidget('assets/images/pdp.jpeg','PDP Online', '12.23','Flutter kursi 4 modul 6 dars'),
          _getWidget('assets/images/pdp.jpeg','PDP Online', '12.23','Flutter kursi 4 modul 6 dars'),
          _getWidget('assets/images/pdp.jpeg','PDP Online', '12.23','Flutter kursi 4 modul 6 dars'),
          _getWidget('assets/images/pdp.jpeg','PDP Online', '12.23','Flutter kursi 4 modul 6 dars'),
          _getWidget('assets/images/pdp.jpeg','PDP Online', '12.23','Flutter kursi 4 modul 6 dars'),
          _getWidget('assets/images/pdp.jpeg','PDP Online', '12.23','Flutter kursi 4 modul 6 dars'),
          _getWidget('assets/images/pdp.jpeg','PDP Online', '12.23','Flutter kursi 4 modul 6 dars'),
          _getWidget('assets/images/pdp.jpeg','PDP Online', '12.23','Flutter kursi 4 modul 6 dars'),
          _getWidget('assets/images/pdp.jpeg','PDP Online', '12.23','Flutter kursi 4 modul 6 dars'),
          _getWidget('assets/images/pdp.jpeg','PDP Online', '12.23','Flutter kursi 4 modul 6 dars'),
          _getWidget('assets/images/pdp.jpeg','PDP Online', '12.23','Flutter kursi 4 modul 6 dars'),
          _getWidget('assets/images/pdp.jpeg','PDP Online', '12.23','Flutter kursi 4 modul 6 dars'),
        ],
      ),
    );
  }
}

Widget _getWidget(rasm, [ism, vaqt, xabar]){

  return Container(
    padding: EdgeInsets.all(10),
    child: Row(

      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image(
            image: AssetImage(rasm),
            width: 70,
            height: 70,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(width: 15,),
        Expanded(child: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Container(
                child: Text('$ism     $vaqt', style: TextStyle(fontSize: 18),),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                child: Text('$xabar', style: TextStyle(fontSize: 16),),
              )
            ],

          ),

        ),),
        Icon(
          Icons.arrow_forward_ios_rounded,
          size: 22,
        )
      ],
    ),

  );


}
