import 'package:flutter/material.dart';
import 'package:lab12/services/word_time.dart';
import 'package:flutter/rendering.dart';
class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}
class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  List<WordTime> locations = [
    WordTime(location: 'kolkata', flag: 'india.png', url: 'Asia/Kolkata'),
    WordTime(location: 'Manila', flag: 'philippines.png', url: 'Asia/Manila'),
    WordTime(location: 'Singapore', flag: 'singapore.png', url: 'Asia/Singapore'),
    WordTime(location: 'Brisbane', flag: 'australia.png', url: 'Australia/Brisbane'),
    WordTime(location: 'Madrid', flag: 'spain.png', url: 'Europe/Madrid'),
    WordTime(location: 'Vienna', flag: 'austria.png', url: 'Europe/Vienna'),
    WordTime(location: 'Maldives', flag: 'maldives.png', url: 'Indian/Maldives'),
    WordTime(location: 'Johannesburg', flag: 'south-africa.png', url: 'Africa/Johannesburg'),
    WordTime(location: 'Barbados', flag: 'barbados.png', url: 'America/Barbados'),
    WordTime(location: 'Costa-Rica', flag: 'costa-rica.png', url: 'America/Costa-Rica'),
    WordTime(location: 'Jamaica', flag: 'jamaica.png', url: 'America/Jamaica'),
    WordTime(location: 'Phoenix', flag: 'usa.png', url: 'America/Phoenix'),
    WordTime(location: 'Broken_Hill', flag: 'australia.png', url: 'Australia/Broken_Hill'),
    WordTime(location: 'Moscow', flag: 'russia.png', url: 'Europe/Moscow'),
  ];
  void updateTime(index) async{
    WordTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context,{
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text("Choose Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount:locations.length ,
        itemBuilder: (context,index){
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0 , horizontal: 4.0),
              child: ListTile(
                onTap: (){
                  // print(locations[index].location);
                  updateTime(index);
                },
                title: Text(locations[index].location.toString()),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/flags/${locations[index].flag}'),
                ),
              ),
          );
        },
      ),
    );
  }
}
