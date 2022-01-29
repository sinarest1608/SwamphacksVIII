class SearchRecipes {
  int offset;
  int number;
  List<Results> results;
  int totalResults;

  SearchRecipes({this.offset, this.number, this.results, this.totalResults});

  SearchRecipes.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    number = json['number'];
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
    totalResults = json['totalResults'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['offset'] = this.offset;
    data['number'] = this.number;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    data['totalResults'] = this.totalResults;
    return data;
  }
}

class Results {
  int id;
  String title;
  int calories;
  String carbs;
  String fat;
  String image;
  String imageType;
  String protein;

  Results({this.id, this.title, this.calories, this.carbs, this.fat, this.image, this.imageType, this.protein});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    calories = json['calories'];
    carbs = json['carbs'];
    fat = json['fat'];
    image = json['image'];
    imageType = json['imageType'];
    protein = json['protein'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['calories'] = this.calories;
    data['carbs'] = this.carbs;
    data['fat'] = this.fat;
    data['image'] = this.image;
    data['imageType'] = this.imageType;
    data['protein'] = this.protein;
    return data;
  }
}
