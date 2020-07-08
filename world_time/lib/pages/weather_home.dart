import 'package:flutter/material.dart';
import 'package:worldtime/services/weather.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Weather_home());
}
class Weather_home extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Weather_home> {

  double current_temp = 0.0;  
  String place = 'Loading...';
  List <FaIcon> leads = [
  FaIcon(FontAwesomeIcons.radiation),
  FaIcon(FontAwesomeIcons.water),
  FaIcon(FontAwesomeIcons.wind)];
  List <String> status = ['Pressure','Humidity','Wind speed'];
  List status_value = [0.0,0.0,0.0];
  String weather_condition = 'loading...';
  var location;


  void time(var locate1)async{
    
    Weather instance = Weather(location: locate1);
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
    
    Future.delayed(Duration.zero, () {
      setState(() {
        location = ModalRoute.of(context).settings.arguments;
      
    });
    
    time(location);
    });
  }

  @override
  Widget build(BuildContext context) {
    String locate;
  locate = ModalRoute.of(context).settings.arguments;
  print(locate);
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FaIcon(FontAwesomeIcons.thermometerHalf,
                    color: Colors.white,
                    size: 50.0,),
                    SizedBox(
                      width: 15.0
                    ),
                    Text('$current_temp°F',
                    style: TextStyle(
                     fontSize: 50.0,
                      color: Colors.white
                    ),),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
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
                  height:20.0
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
                    color: Colors.white
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(itemCount: status.length,itemBuilder: (context,index){
                      return Card(
                        elevation: 0.0,
                        color: Colors.white,
                        child: ListTile(
                          onTap: () {},
                          leading: leads[index],
                          title: Text(status[index],style: TextStyle(
                            color: Colors.blue[700],
                            fontSize: 18.0
                          ),),
                          trailing: Text('${status_value[index]}'),
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