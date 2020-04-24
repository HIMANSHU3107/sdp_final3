import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
import 'lib_images.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Library Manager'), elevation: 0.0,backgroundColor: Colors.green,),
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              DrawerHeader(child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                  SizedBox(height: 5.0,),
                  Text('HIMANSHU BULANI'),
                ],

              )),
              DrawerList(icon: Icons.settings,drawertext: 'Settings',),
              DrawerList(icon: Icons.notifications,drawertext: 'Notifications',),
              DrawerList(icon: Icons.contacts,drawertext: 'Contact us',),
              DrawerList(icon: Icons.settings_backup_restore,drawertext: 'Logout',),
              DrawerList(icon: Icons.help, drawertext: 'About',)

            ],
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          LibraryImage(libimage: 'images/lib_img1.jpg' ,libtext: 'Bharti Vidyapeeth Library',),
          LibraryImage(libimage: 'images/lib_img3.jpg',libtext: 'Friends Library',),
          LibraryImage(libimage: 'images/lib_img2.jpg',libtext: 'Library Mantra',)
  ]  ));



  }
}

