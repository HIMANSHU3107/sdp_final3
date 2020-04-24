import 'package:flutter/material.dart';
import 'constants.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SecondScreen(),
    );
  }
}
class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Library Manager'), elevation: 0.0,backgroundColor: Colors.green,),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(

              radius: 80.0,
              backgroundImage: AssetImage('images/lib_img1.jpg'),
            ),
            SizedBox(height: 10.0,),
            Text('Bharti Vidyapeeth Library',style: TextStyle(fontSize: 40.0,fontFamily: 'Pacifico',color: Colors.green),),
            SizedBox(height: 10.0,),
            Wrap(
              children: <Widget>[
                Text('Address:-',style: kSubHeadingStyle,),
                SizedBox(width: 10.0,),
                Text(' D-302, Medical College Rd, Shriram Nagar, Dhankawadi, Pune, Maharashtra 411043',style: ktextStyle,)
              ],
            ),
            SizedBox(height: 10.0,),
            Wrap(
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Phone No.:-',style: kSubHeadingStyle,)),
                SizedBox(width: 10.0,),
                Text('020 2437 3226',style: ktextStyle,)
              ],
            )

          ],
        ),
      ),
    );
  }
}

