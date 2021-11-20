import'dart:convert';
import'package:untitled/Recipe.dart';
import'package:http/http.dart' as http;

class RecipeApi{

  static Future<List<Recipe>>getRecipe() async {
    var uri = Uri.https('yumly2.p.rapidapi.com','/feeds/list',
        {"limit": "18","start":"0","tag":"list.recipe.popular"});
    final response = await http.get (uri, headers: {
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "x-rapidapi-key": "9116e1985emshea989843771d656p110de5jsnadf602e754f5",
      "useQueryString": "true"
    });
    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
