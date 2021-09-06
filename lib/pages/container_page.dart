import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  static final String id = 'container_page';

  const ContainerPage({Key? key}) : super(key: key);

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container decoration'),
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: [
          _getBorderRadius(),
          _getBorder(),
          _getLinearGradient(),
          _getSweepGradient(),
          _getRadialGradient(),
          _getFoto(),
          _getFotoGradient(),
          _getShapeFoto()
        ],
      ),
    );
  }
}

Widget _getBorderRadius() {
  return Container(
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
    width: double.infinity,
    //height: 520,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.grey,
    ),
    child: Column(
      children: [
        Text(
          '1. borderRadius',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
          width: 240,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.blue,
          ),
        ),
        Image(
          image: AssetImage('assets/images/container_br.jpg'),
          fit: BoxFit.cover,
          /*width: 150,
        height: 150,*/
        )
      ],
    ),
  );
}

Widget _getBorder() {
  return Container(
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
    width: double.infinity,
    //height: 520,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      border:
          Border.all(color: Colors.black, width: 4, style: BorderStyle.solid),
      color: Colors.grey,
    ),
    child: Column(
      children: [
        Text(
          '2. border',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
          width: 240,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
                color: Colors.black, width: 5, style: BorderStyle.solid),
            color: Colors.blue,
          ),
        ),
        Image(
          image: AssetImage('assets/images/border.jpg'),
          fit: BoxFit.cover,
          /*width: 150,
        height: 150,*/
        )
      ],
    ),
  );
}

Widget _getLinearGradient() {
  return Container(
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.grey,
    ),
    child: Column(
      children: [
        Text(
          '3. LinearGradient',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
          width: 240,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  color: Colors.black, width: 5, style: BorderStyle.solid),
              color: Colors.blue,
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.blue.withOpacity(0.9),
                Colors.blue.withOpacity(0.8),
                Colors.blue.withOpacity(0.7),
                Colors.blue.withOpacity(0.6),
                Colors.blue.withOpacity(0.5),
                Colors.blue.withOpacity(0.4),
                Colors.blue.withOpacity(0.3),
                Colors.blue.withOpacity(0.2),
                Colors.blue.withOpacity(0.1),
              ])),
        ),
        Image(
          image: AssetImage('assets/images/2.png'),
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}

Widget _getSweepGradient() {
  return Container(
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.grey,
    ),
    child: Column(
      children: [
        Text(
          '4. SweepGradient',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
          width: 240,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  color: Colors.black, width: 5, style: BorderStyle.solid),
              color: Colors.blue,
              gradient: SweepGradient(
                colors: [
                  Colors.blue.withOpacity(0.9),
                  Colors.blue.withOpacity(0.8),
                  Colors.blue.withOpacity(0.7),
                  Colors.blue.withOpacity(0.6),
                  Colors.blue.withOpacity(0.5),
                  Colors.blue.withOpacity(0.4),
                  Colors.blue.withOpacity(0.3),
                  Colors.blue.withOpacity(0.2),
                  Colors.blue.withOpacity(0.1),
                ],
              )),
        ),
        Image(
          image: AssetImage('assets/images/4.png'),
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}

Widget _getRadialGradient() {
  return Container(
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.grey,
    ),
    child: Column(
      children: [
        Text(
          '5. RadialGradient',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
          width: 240,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  color: Colors.black, width: 5, style: BorderStyle.solid),
              color: Colors.blue,
              gradient: RadialGradient(colors: [
                Colors.blue.withOpacity(0.9),
                Colors.blue.withOpacity(0.8),
                Colors.blue.withOpacity(0.7),
                Colors.blue.withOpacity(0.6),
                Colors.blue.withOpacity(0.5),
                Colors.blue.withOpacity(0.4),
                Colors.blue.withOpacity(0.3),
                Colors.blue.withOpacity(0.2),
                Colors.blue.withOpacity(0.1),
              ])),
        ),
        Image(
          image: AssetImage('assets/images/6.png'),
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}

Widget _getFoto() {
  return Container(
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.grey,
    ),
    child: Column(
      children: [
        Text(
          '6. Foto',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
          width: 240,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage('assets/images/rasm1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Image(
          image: AssetImage('assets/images/66.png'),
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}

Widget _getFotoGradient() {
  return Container(
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.grey,
    ),
    child: Column(
      children: [
        Text(
          '7. Foto + LinearGradient',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
          width: 240,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage('assets/images/rasm1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.4),
                          Colors.black.withOpacity(0.3),
                ])),
          ),
        ),
        Image(
          image: AssetImage('assets/images/7.png'),
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}

Widget _getShapeFoto() {
  return Container(
    padding: EdgeInsets.all(15),
    margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.grey,
    ),
    child: Column(
      children: [
        Text(
          '8. Shape Foto',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
          width: 240,
          height: 200,
          decoration: BoxDecoration(
            //borderRadius: BorderRadius.circular(50),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/rasm1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Image(
          image: AssetImage('assets/images/shapeFoto.png'),
          fit: BoxFit.cover,
        ),
      ],
    ),
  );
}
