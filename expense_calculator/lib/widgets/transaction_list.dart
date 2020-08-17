import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:expense_calculator/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List <Transaction> transactions;
  final Function delTx;
  TransactionList(this.transactions,this.delTx);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
          child: transactions.isEmpty ? 
            Column(children: <Widget>[
              SizedBox(
                height: 20
              ),
              Text(
                'Nothing Here',
                style: TextStyle(fontFamily: 'Overpass',fontSize: 20),
              ),
              
              Container(
                height: 350,
                child: Image.network('https://cdni.iconscout.com/illustration/premium/thumb/empty-state-2130362-1800926.png',
                fit: BoxFit.contain,),
              ),
              
              
            ],)
             : ListView.builder(itemCount: transactions.length,itemBuilder: (context,index){
               return Card(child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(width: 100,
                    margin: EdgeInsets.all(15.0),
                    child: Text('\$${transactions[index].amount.toStringAsFixed(2)}'
                    ,style: TextStyle(color: Colors.white,fontSize: 20.0 ,fontFamily: 'Overpass'),
                    textAlign: TextAlign.center),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context).primaryColor
                    ),
                    padding: EdgeInsets.all(10.0),),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(transactions[index].title,style: TextStyle(
                          fontFamily: 'Overpass',
                          fontWeight: FontWeight.bold
                        ),),
                        Text(DateFormat.yMMMd().add_jm().format(transactions[index].date),
                        style: TextStyle(
                          fontFamily: 'Overpass',
                          color: Colors.grey
                        ),)
                      ],
                    ),
                    IconButton(icon: Icon(Icons.delete,
                    color: Theme.of(context).errorColor,),
                     onPressed: () => delTx(transactions[index].id))
                  ],
                ));
          })
    );
  }
}