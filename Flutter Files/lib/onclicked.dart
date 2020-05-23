import 'package:flutter/material.dart';
import './dummy_meals.dart';
import "./display_food.dart";
import './userfilter.dart';


class Onclicked extends StatelessWidget {
  final String head;
  final String categoryid;

  Onclicked(this.head,this.categoryid);
  
  @override

  Widget build(BuildContext context) {
  
  final categoryfood= dUMMY_MEALS.where((meal)
  
  {return meal.categories.contains(categoryid);

  }).toList();

  final finals= categoryfood.where((meal)
{
if(gluten&&(gluten!=meal.isGlutenFree))
      return false;
if(lactose&&(lactose!=meal.isLactoseFree))
      return false;
if(vegan&&(vegan!=meal.isVegan))
      return false;
if(veg&&(veg!=meal.isVegetarian))
      return false;
else
return true;      


}).toList();


    return Scaffold(
      appBar: AppBar(title:Text(head),centerTitle: true,),
      body: ListView.builder(itemBuilder: (ctx,index){

      return DisplayFood(finals[index]);
      },itemCount:finals.length ,)
    );

  }
}