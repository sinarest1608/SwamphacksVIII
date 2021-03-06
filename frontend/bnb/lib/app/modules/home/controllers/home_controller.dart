import 'dart:developer';

import 'package:bnb/app/data/models/recipe_detail.dart';
import 'package:bnb/app/data/models/search_with_ingredient.dart';
import 'package:bnb/app/data/providers/api_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxList userIngredients = RxList([]);
  RxList searchResults = RxList([]);
  RxList randomRecipes = RxList([]);

  final count = 0.obs;

  handleSearch(List ingredients) async {
    // searchResults
    //     .add(await ApiProvider.searchRecipeWithIngredient(ingredients));

    List list = await ApiProvider.searchRecipeWithIngredient(ingredients);
    list.forEach((element) {
      searchResults.add(SearchWithIngredient.fromJson(element));
    });

    log(searchResults.toString());
  }

  Future<String> getDetails(String id) async {
    return (RecipeDetail.fromJson(await ApiProvider.getRecipeInfo(id))
        .spoonacularSourceUrl!);
  }

  getRandomRecipe() async {
    List list = await ApiProvider.getRandomRecipe();
    list.forEach((element) {
      randomRecipes.add(RecipeDetail.fromJson(element));
    });
  }

  @override
  void onInit() {
    getRandomRecipe();
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  void increment() => count.value++;
}
