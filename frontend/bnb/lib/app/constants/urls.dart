class Urls {
  static String key = "27003149d16d44b9aa990d3cecc00f3e";

  static String baseUrl = "https://api.spoonacular.com/recipes";

  static String recipeByIngredients = "/findByIngredients?apiKey=$key";
  static String recipeInfo =
      "/information?apiKey=$key"; //Add ID /{id}/information

  static String randomRecipe =
      "/random?apiKey=$key&number=10&tags=vegetarian,dessert";

  ///https://api.spoonacular.com/recipes/findByIngredients?apiKey=27003149d16d44b9aa990d3cecc00f3e&ingredients=potato,+onion,+tomato&number=2
}
