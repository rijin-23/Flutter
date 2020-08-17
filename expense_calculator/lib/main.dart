import 'package:expense_calculator/widgets/charts.dart';
import 'package:expense_calculator/widgets/new_transaction.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:expense_calculator/widgets/transaction_list.dart';
import 'package:expense_calculator/models/transaction.dart';
void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp
  ]);
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.pink,
      accentColor: Colors.pinkAccent,
    ),
    home: _ExpenseCalculator(),
  ));
}

class _ExpenseCalculator extends StatefulWidget {

  @override
  __ExpenseCalculatorState createState() => __ExpenseCalculatorState();
}

class __ExpenseCalculatorState extends State<_ExpenseCalculator> {

  final List <Transaction> _transactions = [
    //Transaction(id: 't1',title: 'Bought watch',amount: 149.99,date: DateTime.now()),
    //Transaction(id: 't2',title: 'Bought Groceries',amount: 14.99,date: DateTime.now())
  ];

  List <Transaction> get _recentTransactions{
    return _transactions.where((element) {
      return element.date.isAfter(DateTime.now().subtract(Duration(days: 7)));
    }).toList();
  }

  void _addTransaction({String txTitle, double txAmount, DateTime chosenDate}){
    final tx = Transaction(id: DateTime.now().toString(),
     title: txTitle,
      amount: txAmount, 
      date: chosenDate);

      setState(() {
        _transactions.add(tx);
      });
  }

  void _startAddTransaction(BuildContext context){
    showModalBottomSheet(context: context, builder: (_){
      return GestureDetector(
        onTap: () {},
        child: NewTransaction(_addTransaction),
        behavior: HitTestBehavior.opaque,
        );
    });
  }
  void _deleteTransaction(String id){
    setState(() {
      _transactions.removeWhere((element) {
      return element.id == id;
    });
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Calculator',style: TextStyle(
          fontFamily: 'Overpass',
          fontWeight: FontWeight.bold
        ),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add),
           onPressed: () {
             _startAddTransaction(context);
           })
        ],
      ),
      body: Container(
        child: ListView(
        children: <Widget>[
          Charts(_recentTransactions),
          TransactionList(_transactions,_deleteTransaction),
        ],)
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(onPressed: () {
        _startAddTransaction(context);
      },
      child: Icon(Icons.add),
      ),
    );
  }
}

