import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    Key? key,
    required this.quote,
    required this.delete,
  }) : super(key: key);

  final Quote quote;
  final VoidCallback delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            SizedBox(height: 6,),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14, color: Colors.grey[800]),
            ),
            SizedBox(height: 8,),
            TextButton(
              onPressed: delete, 
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.delete),
                  SizedBox(width: 20,),
                  Text('Delete quote')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}