import'package:flutter/material.dart';
import'recipe_card.dart';
import'package:untitled/Recipe.dart';
import'recipe.api.dart';

class RecipeScreen extends StatefulWidget {

  @override

  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  List<Recipe> _recipes;
  bool _isLoading = true;
  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar( leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ),
          centerTitle: true,
        backgroundColor: Color(0xfffffcfc),
        title: Row(

          children:[

            SizedBox(width:10),
            Text('iCrave',
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: 28,
                  fontFamily:'Payton One',
            ),),
          ]
        )
      ),
       body: _isLoading
       ? Center(child: CircularProgressIndicator())
        : ListView.builder(
        itemCount: _recipes.length,
        itemBuilder: (context, index) {
         return RecipeCard(
         title: _recipes[index].name,
         cookTime: _recipes[index].totalTime,
         rating: _recipes[index].rating.toString(),
           thumbnailUrl: _recipes[index].images);
         },));

  }
}

