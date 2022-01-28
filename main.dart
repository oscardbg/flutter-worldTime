import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
)); 

class NinjaCard extends StatelessWidget {
  const NinjaCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
              ),
            ),
            Divider(
              height: 60, color: Colors.grey[800], thickness: 0.5,
            ),
            Text(
              'NAME',
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(height: 10,),
            Text(
              'Luigi',
              style: TextStyle(color: Colors.amber, letterSpacing: 2, fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            SizedBox(height: 10,),
            Text(
              '8',
              style: TextStyle(color: Colors.amber, letterSpacing: 2, fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10,),
                Text(
                  'luigi@ninjadojo.com',
                  style: TextStyle(
                    color: Colors.grey[400], fontSize: 18, letterSpacing: 1,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}