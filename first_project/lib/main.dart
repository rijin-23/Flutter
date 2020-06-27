import 'package:flutter/material.dart';
import 'drawer_list.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int counter = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
              'Twitch Profile',
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
        ),
        drawer: Drawer_List(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter+=1;
            });
          },
          backgroundColor: Colors.amberAccent,
          child: Icon(
            Icons.add
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/twitch.jpg'),
                  radius: 45.0,
                ),
              ),
              Divider(
                height: 80.0,
                color: Colors.grey[600],
              ),
              Text(
                'NAME',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.white
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Rijin Thomas',
                style: TextStyle(
                    letterSpacing: 1.0,
                    color: Colors.amberAccent,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'ID NAME',
                style: TextStyle(
                    letterSpacing: 2.0,
                    color: Colors.white
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'the_immortal',
                style: TextStyle(
                  letterSpacing: 1.0,
                  color: Colors.amberAccent,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'ONLINE FOR:',
                style: TextStyle(
                    letterSpacing: 2.0,
                    color: Colors.white
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '$counter '+'years',
                style: TextStyle(
                  letterSpacing: 1.0,
                  color: Colors.amberAccent,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.white,

                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'rijin032@gmail.com',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}