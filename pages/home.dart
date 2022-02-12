import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  String dayUrl = 'http://papers.co/wallpaper/papers.co-of16-nature-sea-ocean-41-iphone-wallpaper.jpg';
  String nightUrl = 'https://wallpaperbat.com/img/21366-mountain-in-the-starry-night-iphone-wallpaper-starry-night.jpg';

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;

    String bgImage = data['isDay'] ? dayUrl : nightUrl;
    Color? bgColor = data['isDay'] ? Colors.blue : Colors.indigo[700];

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: (){
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location, color: Colors.grey[300],),
                  label: Text('Edit location', style: TextStyle(color: Colors.grey[300]),),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],
                      style: TextStyle(
                        letterSpacing: 2,
                        fontSize: 28,
                        color: Colors.white
                      ),
                    ),
                ],),
                SizedBox(height: 20,),
                Text(
                  data['wtime'],
                  style: TextStyle(
                    fontSize: 66,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}