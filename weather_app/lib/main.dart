import 'package:flutter/material.dart';
import 'services/weather.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  double current_temp = 0.0;  
  String place = 'Loading...';
  List <String> status = ['Pressure','Humidity','Wind speed'];
  List status_value = [0.0,0.0,0.0];
  String weather_condition = 'loading...';
  void time()async{
    Weather instance = Weather(location: 'London');
    await instance.getWeather();
    place = instance.location;
    weather_condition = instance.conditions;
    setState(() {
      current_temp= instance.temp;
      status_value.replaceRange(0, 3, [instance.pressure,instance.humidity,instance.wind_speed]);
    });
    
    
  }

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    time();
  }

  @override
  Widget build(BuildContext context) {
    print(current_temp);
    return MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.blue[500],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('$current_temp°F',
                style: TextStyle(
                 fontSize: 50.0,
                  color: Colors.white
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(place,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ))
                  ]
                ),
                SizedBox(
                  height:10.0
                ),
                Text(weather_condition,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0
                ),),
                SizedBox(
                  height: 80.0,
                ),
                Expanded(child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[500]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(itemCount: status.length,itemBuilder: (context,index){
                      return Card(
                        color: Colors.white.withOpacity(0.5),
                        child: ListTile(
                          onTap: () {},
                          title: Text(status[index],style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0
                          ),),
                          subtitle: Text('${status_value[index]}'),
                        ),
                      );
                    }),
                  )
                    
                )),
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}