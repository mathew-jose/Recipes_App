import 'package:flutter/material.dart';
import './filter.dart';
import './main.dart';

class MainDrawer extends StatelessWidget {
  
  Widget buildlisttile (BuildContext context,String id,IconData icon,Color colors,Widget page)
  {
  return ListTile(
    leading: Icon(icon,size:25,color:colors),
    title: Text(id,style:TextStyle(fontSize:15,color:Colors.red )),
  
  onTap:()
  {Navigator.of(context).push(MaterialPageRoute( builder: (_){
    return page;
  
  }));
  }
  ); 



  }


  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: <Widget>[
        Container(height:120,
        width:double.infinity,
        padding: EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        color: Colors.blue,
          child: Text("Cooking",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30),),),
      buildlisttile(context,"All Meals",Icons.fastfood,Colors.green,Tabs()),
      buildlisttile(context,"Filters",Icons.filter_frames,Colors.lightBlue,Filter()),
      
      ],
    ));
  }
}