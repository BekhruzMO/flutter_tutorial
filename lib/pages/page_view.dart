import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/container_page.dart';
import 'package:flutter_tutorial/pages/home_page.dart';

class PageViewPage extends StatefulWidget {
  static final String id = 'page_view';
  const PageViewPage({Key? key}) : super(key: key);

  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {

  late PageController _pageController;
  int _selectedPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController= PageController();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView & BottomNavigationBar'),
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
              onPressed: (){
                Navigator.pushNamed(context, HomePage.id);
              },

              child:Container(
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
            TextButton(
              onPressed: (){
                Navigator.pushNamed(context, ContainerPage.id);
              },child:Container(
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
                    'Container',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),),
          ],
        ),
      ),
      body: PageView(

        controller: _pageController,
        onPageChanged: (int index){
          setState(() {
            _selectedPage = index;
          });
        },
        children: [
          Container(
            color: Colors.lightGreenAccent,
            child: Center(
              child: Text('Page 2'),
            ),
          ),
          ListView(
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
          Container(
            color: Colors.lightGreenAccent,
            child: Center(
              child: Text('Page 2'),
            ),
          ),
          Container(
            color: Colors.lightGreenAccent,
            child: Center(
              child: Text('Page 2'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black45,
        unselectedLabelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        showUnselectedLabels: true,
        onTap: (int index){
          setState(() {
            _selectedPage = index;
            _pageController.animateToPage(index, duration: Duration(microseconds: 200), curve: Curves.easeIn);
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home' ),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),label: 'Message' ),

          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video),label: 'Video' ),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_active),label: 'Notification' ),
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
