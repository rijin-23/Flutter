import 'package:http/http.dart';
import 'dart:convert';

class World_time{

  String location;
  String time1;
  String url;
  String flag;

World_time({this.location,this.url,this.flag});

  Future<void> getTime() async{
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map time = jsonDecode(response.body);
    String datetime = time['datetime'];
    time1 = datetime.substring(11,16);
  }

  }
