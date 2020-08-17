import 'package:expense_calculator/models/transaction.dart';
import 'package:expense_calculator/widgets/charts_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Charts extends StatelessWidget {

  final List <Transaction> recentTransactions;

  Charts(this.recentTransactions);

  List<Map<String,Object>> get groupedTransactions {
    return List.generate(7, (index) {

      final weekDay = DateTime.now().subtract(Duration(days: index));
      double totalAmount = 0.0;

      for(var i=0; i < recentTransactions.length; i++){
        if(recentTransactions[i].date.day == weekDay.day &&
        recentTransactions[i].date.month == weekDay.month &&
        recentTransactions[i].date.year == weekDay.year){
          totalAmount = totalAmount + recentTransactions[i].amount;
        }
      }

      print(DateFormat.E().format(weekDay));
      print(totalAmount);

      return {'Day':DateFormat.E().format(weekDay).substring(0,2),
      'Amount': totalAmount};
    });
  }

  double get AmountPercent{
    return groupedTransactions.fold(0.0, (previousValue, element) {
      return previousValue +  element['Amount'];
    });
  }

  @override
  Widget build(BuildContext context) {
    print(groupedTransactions);
    return Card(
      elevation: 6.0,
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: groupedTransactions.map((e) {
            
            return Flexible(
              fit: FlexFit.tight,
                          child: Charts_Bar(label: e['Day'],AmountSpent: e['Amount'],
              AmountSpentpercent: AmountPercent == 0.0 ? 0.0 : (e['Amount'] as double) / AmountPercent),
            );

          }).toList()
        ),
      ),
    );
  }
}