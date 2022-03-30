import 'package:flutter/material.dart';
import 'quotes.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: "The best is yet to be.", author: "shakespeare"),
    Quote(text: "Try to be a rainbow in someone's cloud.", author: "whospere"),
    Quote(
        text: "A positive mindset brings positive things.", author: "boospher"),
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(children: <Widget>[
        Text(quote.text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],
            )),
        SizedBox(height: 6),
        Text(quote.author,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],
            )),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            title: Text('Awsome Quotes'),
            centerTitle: true,
            backgroundColor: Colors.grey[900]),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: quotes.map((quote) => quoteTemplate(quote)).toList()));
  }
}
