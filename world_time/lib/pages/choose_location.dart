import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  List <World_time> locations = [
    World_time(location: 'London', url: '/Europe/London', flag: 'uk.png'),
     World_time(location: 'Berlin', url: '/Europe/Berlin', flag: 'germany.png'),
      World_time(location: 'Chicago', url: '/America/Chicago', flag: 'usa.png'),
       World_time(location: 'Sydney', url: '/Australia/Sydney', flag: 'australia.png'),
        World_time(location: 'Kolkata', url: '/Asia/Kolkata', flag: 'india.png'),
         World_time(location: 'New York', url: '/America/New_York', flag: 'usa.png'),
          World_time(location: 'Seoul', url: '/Asia/Seoul', flag: 'korea.png'),

  ];

  void setTime(index)async{
    World_time now = locations[index];
    await now.getTime();
    Navigator.pop(context, {
      'location': now.location,
    'flag': now.flag,
    'time': now.time1,
    'isDay': now.isDay
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'Choose Location'
        ),
      ),
      body: ListView.builder(itemCount: locations.length,itemBuilder: (context,index) {
        return Card(
          child: ListTile(
            onTap: () {
              setTime(index);
            },
            title: Text(locations[index].location),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/${locations[index].flag}')
            ),
          ),
        );
      }, ),
    );
  }
}
