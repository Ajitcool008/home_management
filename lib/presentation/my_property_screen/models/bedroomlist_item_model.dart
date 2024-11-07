
/// This class is used in the [bedroomlist_item_widget] screen.

class BedroomlistItemModel {
  String shermanoaks;
  String shermanOaks;
  String price;
  String bedroom;
  String bathroom;
  String sqftCounter;
  int? id;

  BedroomlistItemModel({
    required this.shermanoaks,
    required this.shermanOaks,
    required this.price,
    required this.bedroom,
    required this.bathroom,
    required this.sqftCounter,
    this.id,
  });
}
