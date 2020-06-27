import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        padding: EdgeInsets.only(top: 80.0),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.1,0.8],
                colors: [Colors.blue,Colors.lightBlue[200]]
            )
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white
                  ),
                ),
                SizedBox(
                  height: 10.0 ,
                ),
                Text(
                  'Welcome!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0),topRight: Radius.circular(50.0))
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      
                      SizedBox(
                        height: 60.0,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0,right: 15.0),
                        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                            border: Border.all(color: Colors.lightBlueAccent, width: 2.0)
                        ),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Email id or Username'
                              ),
                            ),
                            Divider(
                              height: 10.0,
                              color: Colors.lightBlueAccent,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Password'
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.blue,Colors.lightBlue[200]]
                            ),
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: FlatButton(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Colors.lightBlue
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.indigo[400],
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: FlatButton(
                              child: Text(
                                'Facebook',
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20.0)
                            ),
                            child: FlatButton(
                              child: Text(
                                'G Mail',
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
