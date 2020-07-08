import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

String time_date = 'Loading...';
String location;

  void setTime() async{
    World_time now = World_time(location: 'Kolkata', flag: 'USA.png', url: '/Asia/Kolkata');
    await now.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
    'location': now.location,
    'flag': now.flag,
    'time': now.time1,
    'isDay': now.isDay});
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
        backgroundColor: Colors.blue[500],
        body: SpinKitRotatingCircle(
  color: Colors.white,
  size: 50.0,
),
      )
    );
  }
}

