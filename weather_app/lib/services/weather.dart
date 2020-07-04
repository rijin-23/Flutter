
import 'package:http/http.dart';
import 'dart:convert';


class Weather{
String location;
double temp;
var conditions;
int pressure;
int humidity;
double wind_speed;
Weather({this.location});
Future<void> getWeather() async{
    try{
    Response response = await get('http://api.openweathermap.org/data/2.5/weather?q=$location&appid=41c1eb75b59bc0891cc8c3fe76a72875');
    var weather = jsonDecode(response.body);
    print(weather);
    for (var we in weather['weather']) {
      conditions = we['main'];
    }
    wind_speed = weather['wind']['speed'];
    print(conditions);
    temp = weather['main']['temp'];
    pressure= weather['main']['pressure'];
    humidity = weather ['main']['humidity'];
    }
    catch (e){
      print(e);
      print('Couldnt fetch weather');
    }
  }


}