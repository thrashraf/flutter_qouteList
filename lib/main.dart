import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: quoteList()));
}

class quoteList extends StatefulWidget {
  quoteList({Key? key}) : super(key: key);

  @override
  State<quoteList> createState() => _quoteListState();
}

class _quoteListState extends State<quoteList> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
