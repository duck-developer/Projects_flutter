import 'package:expenses/components/transaction_form.dart';
import 'package:expenses/components/transaction_list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});
  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: "t1",
      title: "Aluguel",
      value: 1200.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Supermercado",
      value: 300.50,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t3",
      title: "Internet",
      value: 100.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t4",
      title: "Transporte",
      value: 50.00,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TransactionList(_transactions), TransactionForm()],
    );
  }
}
