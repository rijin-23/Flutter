import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class World_time{

  String location;
  String time1;
  String url;
  String flag;
  bool isDay;

World_time({this.location,this.url,this.flag});

  Future<void> getTime() async{
    try{
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map time = jsonDecode(response.body);
    String datetime = time['datetime'];
    String off = time['utc_offset'].substring(0,1);
    String offset = time['utc_offset'].substring(1,3);
    int hours = int.parse(offset);
    String minutes = time['utc_offset'].substring(4,);
    DateTime current = DateTime.parse(datetime);
    if(off == '+'){
    current = current.add(Duration(hours: hours,minutes: int.parse(minutes)));
    }
    else{
     current = current.add(Duration(hours: -hours,minutes: int.parse(minutes)));
    }
    isDay = current.hour >6 && current.hour<19 ? true : false;
    time1 = DateFormat.jm().format(current);
    print(time1);
    print(isDay);
    print(url);
    }
    catch (e){
      print(e);
      time1 = 'Cannot load time';
    }
  }

  }
