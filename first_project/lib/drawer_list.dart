import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Drawer_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Container(
          color: Colors.grey[850],
          child: Column(
            children: <Widget>[
              Container(

                padding: EdgeInsets.all(30.0),
                color: Colors.grey[850],
                child: Column(
                  children: <Widget>[
                    Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/twitch.jpg'),
                        radius: 40.0,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'the_immortal',
                      style: TextStyle(
                        color: Colors.amberAccent,
                        fontSize: 20.0
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),

              Divider(
                height: 10.0,
                color: Colors.grey[600],
                thickness: 1.0,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border(bottom: BorderSide(width: 1.0,color: Colors.grey[600]))
                ),
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: Colors.amberAccent,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.amberAccent
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border(bottom: BorderSide(width: 1.0,color: Colors.grey[600]))
                ),
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.info,
                      color: Colors.amberAccent,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Info',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.amberAccent
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border(bottom: BorderSide(width: 1.0,color: Colors.grey[600]))
                ),
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.keyboard_backspace,
                      color: Colors.amberAccent,
                      size: 30.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Exit',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.amberAccent
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

