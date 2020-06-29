import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_Cards.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List <Quotes> quotes = [
  Quotes(text: 'A room without books is like a body without soul', author: 'Marcus Tullius Cicero'),
  Quotes(text: 'Be yourself; everyone else is already taken.', author: 'Oscar Wilde'),
  Quotes(text: 'You only live once, but if you do it right, once is enough', author: 'Mae West')
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quotes',
          ),
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: quotes.map((quote) => QuoteCards(quote: quote ,delete:(){
            setState(() {
              quotes.remove(quote);
            });
          } ,)).toList(),
        ),
      ),
    );
  }
}

