import 'package:meta/meta.dart';

class Ingredient {
  Int id;
  Float amount;
  String unit;
  String unitLong;
  String unitShort;
  String aisle;
  String name;
  String original;
  String originalName;
  String[] meta;
  String image;
}

class Recipe {
  Int id;
  String title;
  String image;
  String imageType;
  Int usedIngredientCount;
  Int missedIngredientCount;
  Ingredient[] missedIngredients;
  Ingredient[] unusedIngredients;
  Int likes;
}
