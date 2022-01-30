// ignore_for_file: unnecessary_this, curly_braces_in_flow_control_structures, prefer_collection_literals, unnecessary_new

class RecipeDetail {
  int? id;
  String? title;
  String? image;
  String? imageType;
  int? servings;
  int? readyInMinutes;
  String? license;
  String? sourceName;
  String? sourceUrl;
  String? spoonacularSourceUrl;
  int? aggregateLikes;
  double? healthScore;
  double? spoonacularScore;
  double? pricePerServing;
  List<dynamic>? analyzedInstructions;
  bool? cheap;
  String? creditsText;
  List<dynamic>? cuisines;
  bool? dairyFree;
  List<dynamic>? diets;
  String? gaps;
  bool? glutenFree;
  String? instructions;
  bool? ketogenic;
  bool? lowFodmap;
  List<dynamic>? occasions;
  bool? sustainable;
  bool? vegan;
  bool? vegetarian;
  bool? veryHealthy;
  bool? veryPopular;
  bool? whole30;
  int? weightWatcherSmartPoints;
  List<String>? dishTypes;
  List<ExtendedIngredients>? extendedIngredients;
  String? summary;
  WinePairing? winePairing;

  RecipeDetail(
      {this.id,
      this.title,
      this.image,
      this.imageType,
      this.servings,
      this.readyInMinutes,
      this.license,
      this.sourceName,
      this.sourceUrl,
      this.spoonacularSourceUrl,
      this.aggregateLikes,
      this.healthScore,
      this.spoonacularScore,
      this.pricePerServing,
      this.analyzedInstructions,
      this.cheap,
      this.creditsText,
      this.cuisines,
      this.dairyFree,
      this.diets,
      this.gaps,
      this.glutenFree,
      this.instructions,
      this.ketogenic,
      this.lowFodmap,
      this.occasions,
      this.sustainable,
      this.vegan,
      this.vegetarian,
      this.veryHealthy,
      this.veryPopular,
      this.whole30,
      this.weightWatcherSmartPoints,
      this.dishTypes,
      this.extendedIngredients,
      this.summary,
      this.winePairing});

  RecipeDetail.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.title = json["title"];
    this.image = json["image"];
    this.imageType = json["imageType"];
    this.servings = json["servings"];
    this.readyInMinutes = json["readyInMinutes"];
    this.license = json["license"];
    this.sourceName = json["sourceName"];
    this.sourceUrl = json["sourceUrl"];
    this.spoonacularSourceUrl = json["spoonacularSourceUrl"];
    this.aggregateLikes = json["aggregateLikes"];
    this.healthScore = json["healthScore"];
    this.spoonacularScore = json["spoonacularScore"];
    this.pricePerServing = json["pricePerServing"];
    this.analyzedInstructions = json["analyzedInstructions"] ?? [];
    this.cheap = json["cheap"];
    this.creditsText = json["creditsText"];
    this.cuisines = json["cuisines"] ?? [];
    this.dairyFree = json["dairyFree"];
    this.diets = json["diets"] ?? [];
    this.gaps = json["gaps"];
    this.glutenFree = json["glutenFree"];
    this.instructions = json["instructions"];
    this.ketogenic = json["ketogenic"];
    this.lowFodmap = json["lowFodmap"];
    this.occasions = json["occasions"] ?? [];
    this.sustainable = json["sustainable"];
    this.vegan = json["vegan"];
    this.vegetarian = json["vegetarian"];
    this.veryHealthy = json["veryHealthy"];
    this.veryPopular = json["veryPopular"];
    this.whole30 = json["whole30"];
    this.weightWatcherSmartPoints = json["weightWatcherSmartPoints"];
    this.dishTypes =
        json["dishTypes"] == null ? null : List<String>.from(json["dishTypes"]);
    this.extendedIngredients = json["extendedIngredients"] == null
        ? null
        : (json["extendedIngredients"] as List)
            .map((e) => ExtendedIngredients.fromJson(e))
            .toList();
    this.summary = json["summary"];
    this.winePairing = json["winePairing"] == null
        ? null
        : WinePairing.fromJson(json["winePairing"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["title"] = this.title;
    data["image"] = this.image;
    data["imageType"] = this.imageType;
    data["servings"] = this.servings;
    data["readyInMinutes"] = this.readyInMinutes;
    data["license"] = this.license;
    data["sourceName"] = this.sourceName;
    data["sourceUrl"] = this.sourceUrl;
    data["spoonacularSourceUrl"] = this.spoonacularSourceUrl;
    data["aggregateLikes"] = this.aggregateLikes;
    data["healthScore"] = this.healthScore;
    data["spoonacularScore"] = this.spoonacularScore;
    data["pricePerServing"] = this.pricePerServing;
    if (this.analyzedInstructions != null)
      data["analyzedInstructions"] = this.analyzedInstructions;
    data["cheap"] = this.cheap;
    data["creditsText"] = this.creditsText;
    if (this.cuisines != null) data["cuisines"] = this.cuisines;
    data["dairyFree"] = this.dairyFree;
    if (this.diets != null) data["diets"] = this.diets;
    data["gaps"] = this.gaps;
    data["glutenFree"] = this.glutenFree;
    data["instructions"] = this.instructions;
    data["ketogenic"] = this.ketogenic;
    data["lowFodmap"] = this.lowFodmap;
    if (this.occasions != null) data["occasions"] = this.occasions;
    data["sustainable"] = this.sustainable;
    data["vegan"] = this.vegan;
    data["vegetarian"] = this.vegetarian;
    data["veryHealthy"] = this.veryHealthy;
    data["veryPopular"] = this.veryPopular;
    data["whole30"] = this.whole30;
    data["weightWatcherSmartPoints"] = this.weightWatcherSmartPoints;
    if (this.dishTypes != null) data["dishTypes"] = this.dishTypes;
    if (this.extendedIngredients != null)
      data["extendedIngredients"] =
          this.extendedIngredients?.map((e) => e.toJson()).toList();
    data["summary"] = this.summary;
    if (this.winePairing != null)
      data["winePairing"] = this.winePairing?.toJson();
    return data;
  }
}

class WinePairing {
  List<String>? pairedWines;
  String? pairingText;
  List<ProductMatches>? productMatches;

  WinePairing({this.pairedWines, this.pairingText, this.productMatches});

  WinePairing.fromJson(Map<String, dynamic> json) {
    this.pairedWines = json["pairedWines"] == null
        ? null
        : List<String>.from(json["pairedWines"]);
    this.pairingText = json["pairingText"];
    this.productMatches = json["productMatches"] == null
        ? null
        : (json["productMatches"] as List)
            .map((e) => ProductMatches.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pairedWines != null) data["pairedWines"] = this.pairedWines;
    data["pairingText"] = this.pairingText;
    if (this.productMatches != null)
      data["productMatches"] =
          this.productMatches?.map((e) => e.toJson()).toList();
    return data;
  }
}

class ProductMatches {
  int? id;
  String? title;
  String? description;
  String? price;
  String? imageUrl;
  double? averageRating;
  double? ratingCount;
  double? score;
  String? link;

  ProductMatches(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.imageUrl,
      this.averageRating,
      this.ratingCount,
      this.score,
      this.link});

  ProductMatches.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.title = json["title"];
    this.description = json["description"];
    this.price = json["price"];
    this.imageUrl = json["imageUrl"];
    this.averageRating = json["averageRating"];
    this.ratingCount = json["ratingCount"];
    this.score = json["score"];
    this.link = json["link"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["title"] = this.title;
    data["description"] = this.description;
    data["price"] = this.price;
    data["imageUrl"] = this.imageUrl;
    data["averageRating"] = this.averageRating;
    data["ratingCount"] = this.ratingCount;
    data["score"] = this.score;
    data["link"] = this.link;
    return data;
  }
}

class ExtendedIngredients {
  String? aisle;
  double? amount;
  String? consitency;
  int? id;
  String? image;
  Measures? measures;
  List<dynamic>? meta;
  String? name;
  String? original;
  String? originalName;
  String? unit;

  ExtendedIngredients(
      {this.aisle,
      this.amount,
      this.consitency,
      this.id,
      this.image,
      this.measures,
      this.meta,
      this.name,
      this.original,
      this.originalName,
      this.unit});

  ExtendedIngredients.fromJson(Map<String, dynamic> json) {
    this.aisle = json["aisle"];
    this.amount = json["amount"];
    this.consitency = json["consitency"];
    this.id = json["id"];
    this.image = json["image"];
    this.measures =
        json["measures"] == null ? null : Measures.fromJson(json["measures"]);
    this.meta = json["meta"] ?? [];
    this.name = json["name"];
    this.original = json["original"];
    this.originalName = json["originalName"];
    this.unit = json["unit"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["aisle"] = this.aisle;
    data["amount"] = this.amount;
    data["consitency"] = this.consitency;
    data["id"] = this.id;
    data["image"] = this.image;
    if (this.measures != null) data["measures"] = this.measures?.toJson();
    if (this.meta != null) data["meta"] = this.meta;
    data["name"] = this.name;
    data["original"] = this.original;
    data["originalName"] = this.originalName;
    data["unit"] = this.unit;
    return data;
  }
}

class Measures {
  Metric? metric;
  Us? us;

  Measures({this.metric, this.us});

  Measures.fromJson(Map<String, dynamic> json) {
    this.metric =
        json["metric"] == null ? null : Metric.fromJson(json["metric"]);
    this.us = json["us"] == null ? null : Us.fromJson(json["us"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.metric != null) data["metric"] = this.metric?.toJson();
    if (this.us != null) data["us"] = this.us?.toJson();
    return data;
  }
}

class Us {
  double? amount;
  String? unitLong;
  String? unitShort;

  Us({this.amount, this.unitLong, this.unitShort});

  Us.fromJson(Map<String, dynamic> json) {
    this.amount = json["amount"];
    this.unitLong = json["unitLong"];
    this.unitShort = json["unitShort"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["amount"] = this.amount;
    data["unitLong"] = this.unitLong;
    data["unitShort"] = this.unitShort;
    return data;
  }
}

class Metric {
  double? amount;
  String? unitLong;
  String? unitShort;

  Metric({this.amount, this.unitLong, this.unitShort});

  Metric.fromJson(Map<String, dynamic> json) {
    this.amount = json["amount"];
    this.unitLong = json["unitLong"];
    this.unitShort = json["unitShort"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["amount"] = this.amount;
    data["unitLong"] = this.unitLong;
    data["unitShort"] = this.unitShort;
    return data;
  }
}
