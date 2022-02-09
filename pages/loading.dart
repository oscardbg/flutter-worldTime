import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({ Key? key }) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  
  void getData() async{
    Response resp = await get(Uri.https('jsonplaceholder.typicode.com', '/posts/1', {'q': 'http'}));
    Map data = jsonDecode(resp.body);
    print(data['title']);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Page'),
    );
  }
}