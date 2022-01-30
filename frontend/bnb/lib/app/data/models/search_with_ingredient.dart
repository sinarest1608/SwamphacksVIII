// ignore_for_file: unnecessary_this, curly_braces_in_flow_control_structures, prefer_collection_literals, unnecessary_new

class SearchWithIngredient {
  int? id;
  String? image;
  String? imageType;
  int? likes;
  int? missedIngredientCount;
  List<MissedIngredients>? missedIngredients;
  String? title;
  List<UnusedIngredients>? unusedIngredients;
  int? usedIngredientCount;
  List<dynamic>? usedIngredients;

  SearchWithIngredient(
      {this.id,
      this.image,
      this.imageType,
      this.likes,
      this.missedIngredientCount,
      this.missedIngredients,
      this.title,
      this.unusedIngredients,
      this.usedIngredientCount,
      this.usedIngredients});

  SearchWithIngredient.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.image = json["image"];
    this.imageType = json["imageType"];
    this.likes = json["likes"];
    this.missedIngredientCount = json["missedIngredientCount"];
    this.missedIngredients = json["missedIngredients"] == null
        ? null
        : (json["missedIngredients"] as List)
            .map((e) => MissedIngredients.fromJson(e))
            .toList();
    this.title = json["title"];
    this.unusedIngredients = json["unusedIngredients"] == null
        ? null
        : (json["unusedIngredients"] as List)
            .map((e) => UnusedIngredients.fromJson(e))
            .toList();
    this.usedIngredientCount = json["usedIngredientCount"];
    this.usedIngredients = json["usedIngredients"] ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["image"] = this.image;
    data["imageType"] = this.imageType;
    data["likes"] = this.likes;
    data["missedIngredientCount"] = this.missedIngredientCount;
    if (this.missedIngredients != null)
      data["missedIngredients"] =
          this.missedIngredients?.map((e) => e.toJson()).toList();
    data["title"] = this.title;
    if (this.unusedIngredients != null)
      data["unusedIngredients"] =
          this.unusedIngredients?.map((e) => e.toJson()).toList();
    data["usedIngredientCount"] = this.usedIngredientCount;
    if (this.usedIngredients != null)
      data["usedIngredients"] = this.usedIngredients;
    return data;
  }
}

class UnusedIngredients {
  String? aisle;
  double? amount;
  int? id;
  String? image;
  List<dynamic>? meta;
  String? name;
  String? original;
  String? originalName;
  String? unit;
  String? unitLong;
  String? unitShort;

  UnusedIngredients(
      {this.aisle,
      this.amount,
      this.id,
      this.image,
      this.meta,
      this.name,
      this.original,
      this.originalName,
      this.unit,
      this.unitLong,
      this.unitShort});

  UnusedIngredients.fromJson(Map<String, dynamic> json) {
    this.aisle = json["aisle"];
    this.amount = json["amount"];
    this.id = json["id"];
    this.image = json["image"];
    this.meta = json["meta"] ?? [];
    this.name = json["name"];
    this.original = json["original"];
    this.originalName = json["originalName"];
    this.unit = json["unit"];
    this.unitLong = json["unitLong"];
    this.unitShort = json["unitShort"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["aisle"] = this.aisle;
    data["amount"] = this.amount;
    data["id"] = this.id;
    data["image"] = this.image;
    if (this.meta != null) data["meta"] = this.meta;
    data["name"] = this.name;
    data["original"] = this.original;
    data["originalName"] = this.originalName;
    data["unit"] = this.unit;
    data["unitLong"] = this.unitLong;
    data["unitShort"] = this.unitShort;
    return data;
  }
}

class MissedIngredients {
  String? aisle;
  double? amount;
  String? extendedName;
  int? id;
  String? image;
  List<String>? meta;
  String? name;
  String? original;
  String? originalName;
  String? unit;
  String? unitLong;
  String? unitShort;

  MissedIngredients(
      {this.aisle,
      this.amount,
      this.extendedName,
      this.id,
      this.image,
      this.meta,
      this.name,
      this.original,
      this.originalName,
      this.unit,
      this.unitLong,
      this.unitShort});

  MissedIngredients.fromJson(Map<String, dynamic> json) {
    this.aisle = json["aisle"];
    this.amount = json["amount"];
    this.extendedName = json["extendedName"];
    this.id = json["id"];
    this.image = json["image"];
    this.meta = json["meta"] == null ? null : List<String>.from(json["meta"]);
    this.name = json["name"];
    this.original = json["original"];
    this.originalName = json["originalName"];
    this.unit = json["unit"];
    this.unitLong = json["unitLong"];
    this.unitShort = json["unitShort"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["aisle"] = this.aisle;
    data["amount"] = this.amount;
    data["extendedName"] = this.extendedName;
    data["id"] = this.id;
    data["image"] = this.image;
    if (this.meta != null) data["meta"] = this.meta;
    data["name"] = this.name;
    data["original"] = this.original;
    data["originalName"] = this.originalName;
    data["unit"] = this.unit;
    data["unitLong"] = this.unitLong;
    data["unitShort"] = this.unitShort;
    return data;
  }
}
