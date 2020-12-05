class ImageModel {
  int id;
  String title;
  String url;

  ImageModel(this.id, this.title, this.url);

  ImageModel.fromJson(Map<String, dynamic> request) {
    id = request['id'];
    title = request['title'];
    url = request['url'];
  }
}