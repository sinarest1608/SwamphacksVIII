import 'dart:convert';
import 'dart:developer';

import 'package:bnb/app/constants/urls.dart';
import 'package:bnb/app/data/models/search_with_ingredient.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  static searchRecipeWithIngredient(List ingredients) async {
    String args = "";

    ingredients.forEach((element) {
      args = args + element;

      if (ingredients.indexOf(element) == ingredients.length - 1) {
      } else {
        args = args + ",+";
      }
    });

    var url = Uri.parse(Urls.baseUrl +
        Urls.recipeByIngredients +
        "&ingredients=" +
        args +
        "&number=10");

    var response = await http.get(url);
    var jsonResponse = jsonDecode(response.body);

    return jsonResponse;
  }

  static getRecipeInfo(String id) async {
    var url = Uri.parse(Urls.baseUrl + "/$id" + Urls.recipeInfo);

    var response = await http.get(url);
    var jsonResponse = jsonDecode(response.body);

    return jsonResponse;
  }
}
