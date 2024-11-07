
/// This class is used in the [locationgrid_item_widget] screen.


class LocationIdItemModel {
  String image;

  String name;


  String price;
  String type;

  String? bed;
String  sqft;
  String? bathtub;
  bool isFavourite ;
  int? id;

  LocationIdItemModel({
    required this.image,
    required this.name,
    required this.price,
    required this.type,
    this.bed,
    this.bathtub,
    required this.sqft,
    this.id,
    required this.isFavourite,
  });
}