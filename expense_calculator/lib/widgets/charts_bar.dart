import 'package:flutter/material.dart';

class Charts_Bar extends StatelessWidget {

  final String label;
  final double AmountSpent;
  final double AmountSpentpercent;

  Charts_Bar({this.label,this.AmountSpent,this.AmountSpentpercent});

  @override
  Widget build(BuildContext context) {
    print('amt is $AmountSpentpercent');
    return Column(
      children: <Widget>[
        FittedBox(
                  child: Text(
            '\$${AmountSpent.toStringAsFixed(0)}'
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey,width: 1),
                  borderRadius: BorderRadius.circular(10)
                ),
                
                ),
                FractionallySizedBox(
                  heightFactor: AmountSpentpercent,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              
              
            ],
          ),
        ),
        SizedBox(
                height: 4
              ),
              Text('${label}')
      ],
    );
  }
}