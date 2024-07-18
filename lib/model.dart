import 'package:onlinerecipes/home.dart';
class RecipeModel{
   String applable;
   String appimgUrl;
   double appcalories;
   String appurl;

  RecipeModel({this.applable='lable',this.appcalories=00,this.appimgUrl="Image",this.appurl="Url"});
  factory RecipeModel.fromMap(Map recipe)
  {
    return RecipeModel(
      applable: recipe["label"],
      appcalories: recipe["calories"],
      appimgUrl: recipe["image"],
      appurl: recipe["url"]
    );
  }
}
