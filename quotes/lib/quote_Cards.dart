import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quotes.dart';
class QuoteCards extends StatelessWidget {

  final Quotes quote;
  final Function delete;
  QuoteCards({this.quote , this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(30.0, 30.0, 30.0,0.0),
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                quote.text,
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey[600]
                )
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.redAccent,
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            FlatButton.icon(
              onPressed: delete,
              label: Text('Delete'),
              icon: Icon(
                Icons.delete
              ),
            )
          ],
        ),
      ),
    );
  }
}
