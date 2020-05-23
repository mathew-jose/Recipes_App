import 'package:flutter/material.dart';
import './dummy_meals.dart';
import './display_food.dart';

class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    final categoryfood = dUMMY_MEALS.where((meal) {
      return meal.favourite;
    }).toList();

    return categoryfood.length != 0
        ? ListView.builder(
            itemBuilder: (ctx, index) {
              return DisplayFood(categoryfood[index]);
            },
            itemCount: categoryfood.length,
          )
        : Center(child: Text("The Favourites Will Appear Here"));
  }
}
