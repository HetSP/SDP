import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lab 8 Tut - 1"),
          centerTitle: true,
        ),


        /*
      body: const Padding(
        padding: EdgeInsets.all(30),
        child: Text("Het Patel"),
      ),
     */




        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            Container(
              color:Colors.blue,
              padding: EdgeInsets.all(20.0),
              child: Text('Container 1'),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Container 2'),
                ),
              ),
            ),
            Container(
              color: Colors.green[800],
              padding: EdgeInsets.all(20.0),
              child: Text('Container 3'),
            ),
          ],
        )




      /*
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Expanded(
            child: Container(
              color: Colors.red[800],
              padding: EdgeInsets.all(20.0),
              child: Text('Container 1'),
            ),
          ),
          Container(
            color: Colors.green[800],
            padding: EdgeInsets.all(20.0),
            child: Text('Container 2'),
          ),
          Container(
            color: Colors.blue[800],
            padding: EdgeInsets.all(20.0),
            child: Text('Container 3'),
          ),
        ],

      )


         */



    );
  }
}

