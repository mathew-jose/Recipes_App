import 'package:flutter/material.dart';
import './food.dart';

class Recipe extends StatefulWidget {
  final Food food;
  Recipe(this.food);

  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.food.title),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  widget.food.imageUrl,
                  fit: BoxFit.cover,
                )),
            Container(
              child: Text(
                "\n\nIngredients\n\n",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black, width: 5)),
              height: 300,
              width: 300,
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return Card(
                    color: Colors.yellowAccent,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(
                        widget.food.ingredients[index],
                      ),
                    ),
                  );
                },
                itemCount: widget.food.ingredients.length,
              ),
            ),
            Container(
              child: Text(
                "\n\nRecipe\n\n",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.black, width: 5)),
              height: 500,
              width: 300,
              child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('# ${(index + 1)}'),
                          backgroundColor: Colors.red,
                        ),
                        title: Card(
                          color: Colors.yellowAccent,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              widget.food.steps[index],
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                    ],
                  );
                },
                itemCount: widget.food.steps.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: 
      FloatingActionButton(

              child: widget.food.favourite
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
            onPressed: () {
              widget.food.favourite = !widget.food.favourite;
              setState(() {});
            },
            backgroundColor: Colors.black,
            ),
    
    );

    // Text(food.steps.toString()),
  }
}
