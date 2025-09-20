import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../components/catedory_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Vamos Cozinhas?", style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Theme.of(context).primaryColorDark,
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIS.map((cat) {
          return CatedoryItem(cat);
        }).toList(),
      ),
    );
  }
}
