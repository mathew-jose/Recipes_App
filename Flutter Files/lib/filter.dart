import "package:flutter/material.dart";
import 'package:meals/drawer.dart';
import './userfilter.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  Widget buildswitch(String id, String sub, var val, Function update) {
    return SwitchListTile(
        title: Text(id), subtitle: Text(sub), value: val, onChanged: update);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Filter"),backgroundColor: Colors.black,),
      drawer: MainDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
 Text(
                " Preferences For The Food\n\n",
                style: TextStyle(fontSize: 30),
              ),
             ListView(
               shrinkWrap: true,
                  children: <Widget>[
                    
                    buildswitch("Gluten", "Show Our Gluten Free Menu", gluten,
                        (change) {
                      setState(() {
                        gluten = change;
                      });
                    }),
                    buildswitch("Vegan", "Show Our Vegan Menu", vegan,
                        (change) {
                      setState(() {
                        vegan = change;
                      });
                    }),
                    buildswitch(
                        "Vegetarian", "Show Our Vegetarian Menu", veg,
                        (change) {
                      setState(() {
                        veg = change;
                      });
                    }),
                    buildswitch(
                        "Lactose", "Show Our Lactose Free Menu", lactose,
                        (change) {
                      setState(() {
                        lactose = change;
                      });
                    }),
                    
                  ],
                ),
              
            
          
        ],
      ),
    );
  }
}
