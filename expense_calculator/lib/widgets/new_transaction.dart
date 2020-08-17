import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {

  Function addTx;
  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  DateTime pickedDate;

  void setTransaction(){
    final titleReceived = titleController.text;
    final amountReceived = double.parse(amountController.text);

    if(titleReceived.isEmpty || amountReceived <=0 || pickedDate == null){
      return;
    }

    widget.addTx(
    txTitle:titleController.text,
    txAmount:double.parse(amountController.text),
    chosenDate:pickedDate);

    Navigator.of(context).pop();
  }

  void _showDatePicker(){
    showDatePicker(context: context,
    initialDate: DateTime.now(),
    firstDate:DateTime(2020),
    lastDate: DateTime.now()).then((value) {
      if(value == null){
        return;
      }
      setState(() {
        pickedDate = value;
      });
      
    });
  }

  @override
  Widget build(BuildContext context) {
    //double bottomPadding = MediaQuery.of(context).viewInsets.bottom + 10;
    return SingleChildScrollView(
          child: Container(
              child: Card(
                elevation: 10.0,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top :10,
                    left : 10,
                    right : 10,
                    bottom : 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextField(decoration: InputDecoration(labelText: 'Title',labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Theme.of(context).primaryColor)
                      )
                      ),
                      controller: titleController,
                      onSubmitted: (_)=> setTransaction(),),

                      TextField(decoration: InputDecoration(labelText: 'Amount',labelStyle: TextStyle(color: Theme.of(context).primaryColor),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Theme.of(context).primaryColor)
                      )
                      ),
                      controller: amountController,
                      onSubmitted: (_)=> setTransaction(),
                      keyboardType: TextInputType.number),

                      Container(
                        height: 70,
                        child: Row(
                          children: <Widget>[
                            Text(
                              pickedDate == null ? 'No Date Chosen' : DateFormat.yMMMd().format(pickedDate)
                            ),
                            FlatButton(onPressed: _showDatePicker,
                             child: Text(
                               'Choose Date',
                               style: TextStyle(
                                 color: Theme.of(context).primaryColor
                               ),
                             ))
                          ],
                        ),
                      ),

                      RaisedButton(color: Theme.of(context).primaryColor,
                      onPressed:setTransaction ,
                       child: Text('Add Transaction',style: TextStyle(
                        color: Colors.white
                      ),),
                    )
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}