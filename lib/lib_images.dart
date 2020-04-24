import 'package:flutter/material.dart';
import 'second_page.dart';

class LibraryImage extends StatelessWidget {
  LibraryImage({this.libimage,this.libtext});
  final String libimage;
  final String libtext;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(

                  builder: (context){
                    return SecondScreen();

                }) );},
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF1D1E33)
                ),
                child: Column(
                  children: <Widget>[
                    Image(image: AssetImage(libimage)),
                    Text(libtext,style: TextStyle(fontFamily: 'Pacifico'))
                  ],
                ),
              ),
            )
          ],
        ),

      ],
    );
  }
}

