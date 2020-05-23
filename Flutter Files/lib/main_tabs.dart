import 'package:flutter/material.dart';
import './gradients.dart';
import './dummy_meals.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Food To Eat",
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: GridView(
          padding: EdgeInsets.all(10),
          children: Meals_list.map((tx) => Grads(tx.item,tx.id, tx.color)).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20)),
    );
  }
}
