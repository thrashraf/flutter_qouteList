import 'package:flutter/material.dart';
import 'qoute.dart';
import 'cardTemplate.dart';

void main() {
  runApp(MaterialApp(home: quoteList()));
}

class quoteList extends StatefulWidget {
  quoteList({Key? key}) : super(key: key);

  @override
  State<quoteList> createState() => _quoteListState();
}

class _quoteListState extends State<quoteList> {
  List quoteList = [
    Quote(
        text:
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur',
        author: 'lol'),
    Quote(
        text:
            'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur',
        author: 'hehe'),
  ];

  //?  function return widget card

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('My quote app'),
          centerTitle: true,
          backgroundColor: Colors.amber[400],
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: quoteList
                .map((quote) => cardTemplate(
                    quote: quote,
                    delete: () {
                      setState(() {
                        quoteList.remove(quote);
                      });
                    }))
                .toList(),
          ),
        ));
  }
}
