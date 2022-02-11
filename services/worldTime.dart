import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  String location = "";
  String wtime = "";
  String flag = "";
  String url = "";

  WorldTime({this.location="", this.flag="", this.url=""});

  Future<void> getTime() async{
    Response resp = await get(Uri.http('worldtimeapi.org', '/api/timezone/$url', {'q': 'http'}));
    Map data = jsonDecode(resp.body);
    
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    wtime = now.toString();
  }

}