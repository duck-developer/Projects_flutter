import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titlleController = TextEditingController();
  final valueController = TextEditingController();
  TransactionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            children: [
              TextField(
                controller: titlleController,
                decoration: InputDecoration(labelText: "Titulo"),
              ),
              TextField(
                controller: valueController,
                decoration: InputDecoration(labelText: "Valor (R\$)"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      print(titlleController.text);
                      print(valueController.text);
                    },
                    child: Text(
                      "Nova Transação",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
