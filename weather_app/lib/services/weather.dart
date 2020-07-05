
import 'package:http/http.dart';
import 'dart:convert';
import 'package:weather_app/services/api_key.dart';


class Weather{
String location;
double temp;
var conditions;
int pressure;
int humidity;
double wind_speed;
String api_key;

Weather({this.location});
Future<void> getWeather() async{
    Api_key key_store = Api_key();
    key_store.key();
    api_key = key_store.key_value;
    try{
    Response response = await get('http://api.openweathermap.org/data/2.5/weather?q=$location&appid=$api_key');
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