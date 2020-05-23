import 'package:flutter/material.dart';
import './onclicked.dart';

class Grads extends StatelessWidget {
  final String title;
  final String id;
  final Color color;
  Grads(this.title,this.id,this.color);
  void move(BuildContext ctx)
  {Navigator.of(ctx).push(MaterialPageRoute( builder: (_){
    return Onclicked(title,id);
  }));
  }
  
  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
      onTap:(){move(context); },
          child: Container(
        padding: EdgeInsets.all(7),
        child: Text(title,style:TextStyle(fontFamily: 'RobotoCondensed')),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          color.withOpacity(0.3),
          color,
        
        ],
        begin: Alignment.topLeft,
      end:Alignment.bottomRight,
        ),
       borderRadius: BorderRadius.circular(15)
        ),

      ),
    );
  }
}
