class GetSimilarRecipe {
  int id;
  String title;
  String imageType;
  int readyInMinutes;
  int servings;
  String sourceUrl;

  GetSimilarRecipe({this.id, this.title, this.imageType, this.readyInMinutes, this.servings, this.sourceUrl});

  GetSimilarRecipe.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    imageType = json['imageType'];
    readyInMinutes = json['readyInMinutes'];
    servings = json['servings'];
    sourceUrl = json['sourceUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['imageType'] = this.imageType;
    data['readyInMinutes'] = this.readyInMinutes;
    data['servings'] = this.servings;
    data['sourceUrl'] = this.sourceUrl;
    return data;
  }
}
