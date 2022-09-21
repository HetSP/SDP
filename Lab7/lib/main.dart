import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

// Below StatelessWidget can be generated with shortcut stless.

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        centerTitle: true,
      ),
      // AppBar is used to define heading/title of the application which appears at the top of page.
      // The second line centerTitle sets its value to true which leads the title text to appear on center.

      body: Center(
        // The center method will display all content for body in the center of frame.


        child: Image(
          image: AssetImage('assets/subasset/download.jpg'),
        ),


        /*
        child: ElevatedButton(
          child: Text('Press me'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.greenAccent,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              textStyle: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900)
          ),
        ),
         */


        /*
        child: FlatButton(
          onPressed: (){
            print("Button is clicked!");
          },
          child: Text("On Press"),
          color: Colors.tealAccent,
        ),

        */

        /*
        child:IconButton(
          icon: Icon(
            Icons.abc,
            size: 100.0,
          ),
          tooltip: 'Alphabets',
          onPressed: () {
            print('Alphabet print');
          },
        ),

          */


        /*
          child: TextButton.icon(
            icon: Icon(
              Icons.abc_outlined,
              color:Colors.redAccent,
              size: 90.0,
            ),
            label: Text(
              "Het",
              style: TextStyle(
                color: Colors.black,
                fontSize: 60.0,
                letterSpacing: 2.0,
                backgroundColor: Colors.tealAccent,
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {},
          ),
         */

        /*
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              icon: Icon(
                Icons.ac_unit,
                color:Colors.teal,
                size: 80.0,
              ),
              label: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  letterSpacing: 2.0,
                  backgroundColor: Colors.red,
                ),
                textAlign: TextAlign.start,
              ),
              onPressed: () {},

            )
            ,
          )
         */

      ),

      /*
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text("Button"),
        backgroundColor: Colors.blue,
      ),

      */
    );
  }
}
