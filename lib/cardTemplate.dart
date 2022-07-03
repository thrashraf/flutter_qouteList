import 'package:flutter/material.dart';
import 'qoute.dart';

class cardTemplate extends StatelessWidget {
  final quote;
  final delete;

  cardTemplate({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: (Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(quote.text),
              SizedBox(height: 10),
              Text(
                quote.author,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('delete'),
              )
            ],
          ))),
    );
  }
}
