import 'package:flutter/material.dart';

import '../models/category.dart';

class CatedoryItem extends StatelessWidget {
  final Category category;
  const CatedoryItem(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: Text(category.title));
  }
}
