import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //String titleInput;
    //String amountInput;

    return Card(
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
            /*
                  onChanged: (value){
                    titleInput = value;
                  },
                  */
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: amountController,
            //onChanged: (value) => amountInput = value,
          ),
          FlatButton(
            onPressed: () {
              addTransaction(
                titleController.text,
                double.parse(amountController.text),
              );
            },
            textColor: Colors.orange,
            child: Text(
              'Add Transaction',
            ),
          ),
        ],
      ),
    );
  }
}
