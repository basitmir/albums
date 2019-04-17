class ImageModel{
  int id;
  String url;
  String name;

  ImageModel(this.id,this.url,this.name);

  ImageModel.fromJson(Map<String,dynamic>parsedJson){
    id=parsedJson['id'];
    url=parsedJson['url'];
    name=parsedJson['name'];
  }
}