import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';


class Loading extends StatefulWidget {
  // const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async{
    // String username = await Future.delayed(Duration(seconds: 4),(){return 'Hello DDU';});
    // // print('in getData ...after future call....');
    // String bio = await Future.delayed(Duration(seconds: 2),(){return 'DDU is best';});
    // print('$username -> $bio');
    final response = await
    get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    print(response.body);
    Map data = jsonDecode(response.body);
    print(data);
    print(data['title']);
  }
  @override
  void initState(){
    super.initState();
    // print('INIT STATE FUNCTION RUN IN CHOOSE LOCATION...');
    // print('before getData call');
    getData();
    // print('after getData call');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Loading page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Loading Screen"),
      )
    );
  }
}
