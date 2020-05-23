import "package:flutter/material.dart";
import 'package:meals/favourite.dart';
import './main_tabs.dart';
import './drawer.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      theme: ThemeData(fontFamily: 'Raleway'),
    );
  }
}

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}
final List<Widget> pages=[Homepage(),Favourite()];
var page=0;
class _TabsState extends State<Tabs> {
 void selectpage(int index)
 {
setState(() {
  
  page=index;
});
 }

 final List<Map<String,Object>> items=[
   {"page":Homepage(),
   "title":"Categories",
   },
  {"page":Favourite(),
   "title":"Favourites",
   }
 ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(items[page]["title"]),
          centerTitle: true,
          backgroundColor: Colors.black,
        
        ),
        drawer: MainDrawer(),
        body: items[page]["page"],

        bottomNavigationBar: BottomNavigationBar(
          onTap: selectpage,
          selectedItemColor: Colors.green,
          currentIndex: page,
          items: [
BottomNavigationBarItem(icon: Icon(Icons.category),title:Text("Categories")),
BottomNavigationBarItem(icon: Icon(Icons.favorite_border),title:Text("Favourites")),
            
          ]),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
