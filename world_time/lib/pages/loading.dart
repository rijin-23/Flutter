import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

String time_date = 'Loading...';
String location;

  void setTime() async{
    World_time now = World_time(location: 'Chicago', flag: 'USA.png', url: '/America/Chicago');
    await now.getTime();
    setState(() {
      time_date = now.time1;
      location = now.location;
    });
  }
  @override
  void initState() {
    super.initState();
    setTime();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          title: Text('World Time'),
          backgroundColor: Colors.blueAccent,),
         body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
              Text('$time_date',style: TextStyle(color: Colors.white,
              fontSize: 80.0,
              fontWeight: FontWeight.bold
              ),
         ),
         SizedBox(
           height: 10.0,
         ),
         Text(location,
         style:TextStyle(fontSize: 20.0, color: Colors.white) ,)
              ],
                      
            ),
          ),),
      )
    );
  }
}

