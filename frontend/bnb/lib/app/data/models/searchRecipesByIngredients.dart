class SearchRecipesByIngredients {
  int id;
  String image;
  String imageType;
  int likes;
  int missedIngredientCount;
  List<MissedIngredients> missedIngredients;
  String title;
  List<Null> unusedIngredients;
  int usedIngredientCount;
  List<UsedIngredients> usedIngredients;

  SearchRecipesByIngredients({this.id, this.image, this.imageType, this.likes, this.missedIngredientCount, this.missedIngredients, this.title, this.unusedIngredients, this.usedIngredientCount, this.usedIngredients});

  SearchRecipesByIngredients.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    imageType = json['imageType'];
    likes = json['likes'];
    missedIngredientCount = json['missedIngredientCount'];
    if (json['missedIngredients'] != null) {
      missedIngredients = new List<MissedIngredients>();
      json['missedIngredients'].forEach((v) {
        missedIngredients.add(new MissedIngredients.fromJson(v));
      });
    }
    title = json['title'];
    if (json['unusedIngredients'] != null) {
      unusedIngredients = new List<Null>();
      json['unusedIngredients'].forEach((v) {
        unusedIngredients.add(new Null.fromJson(v));
      });
    }
    usedIngredientCount = json['usedIngredientCount'];
    if (json['usedIngredients'] != null) {
      usedIngredients = new List<UsedIngredients>();
      json['usedIngredients'].forEach((v) {
        usedIngredients.add(new UsedIngredients.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['imageType'] = this.imageType;
    data['likes'] = this.likes;
    data['missedIngredientCount'] = this.missedIngredientCount;
    if (this.missedIngredients != null) {
      data['missedIngredients'] = this.missedIngredients.map((v) => v.toJson()).toList();
    }
    data['title'] = this.title;
    if (this.unusedIngredients != null) {
      data['unusedIngredients'] = this.unusedIngredients.map((v) => v.toJson()).toList();
    }
    data['usedIngredientCount'] = this.usedIngredientCount;
    if (this.usedIngredients != null) {
      data['usedIngredients'] = this.usedIngredients.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MissedIngredients {
  String aisle;
  int amount;
  int id;
  String image;
  List<Null> meta;
  String name;
  String original;
  String originalName;
  String unit;
  String unitLong;
  String unitShort;

  MissedIngredients({this.aisle, this.amount, this.id, this.image, this.meta, this.name, this.original, this.originalName, this.unit, this.unitLong, this.unitShort});

  MissedIngredients.fromJson(Map<String, dynamic> json) {
    aisle = json['aisle'];
    amount = json['amount'];
    id = json['id'];
    image = json['image'];
    if (json['meta'] != null) {
      meta = new List<Null>();
      json['meta'].forEach((v) {
        meta.add(new Null.fromJson(v));
      });
    }
    name = json['name'];
    original = json['original'];
    originalName = json['originalName'];
    unit = json['unit'];
    unitLong = json['unitLong'];
    unitShort = json['unitShort'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aisle'] = this.aisle;
    data['amount'] = this.amount;
    data['id'] = this.id;
    data['image'] = this.image;
    if (this.meta != null) {
      data['meta'] = this.meta.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    data['original'] = this.original;
    data['originalName'] = this.originalName;
    data['unit'] = this.unit;
    data['unitLong'] = this.unitLong;
    data['unitShort'] = this.unitShort;
    return data;
  }
}
