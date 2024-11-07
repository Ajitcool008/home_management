import '../../../core/app_export.dart';
import 'bedroomlist_item_model.dart';

/// This class defines the variables used in the [my_property_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyPropertyModel {
  Rx<List<BedroomlistItemModel>> bedroomlistItemList = Rx([
    BedroomlistItemModel(
        shermanoaks: ImageConstant.imgRectangle17858,
        shermanOaks: "Sherman oaks",
        price: "\$40/mo",
        bedroom: "02 bedroom",
        bathroom: "03 Bathroom",
        sqftCounter: "2468 sqft"),
    BedroomlistItemModel(
        shermanoaks: ImageConstant.imgRectangle178587,
        shermanOaks: "Sherman heights",
        price: "\$40/mo",
        bedroom: "03 bedroom",
        bathroom: "04 Bathroom",
        sqftCounter: "2468 sqft"),
    BedroomlistItemModel(
        shermanoaks: ImageConstant.imgBg2,
        shermanOaks: "City dwellers",
        price: "\$40/mo",
        bedroom: "04 bedroom",
        bathroom: "04 Bathroom",
        sqftCounter: "2468 sqft"),
    BedroomlistItemModel(
        shermanoaks: ImageConstant.imgRectangle178589,
        shermanOaks: "Sunshine town",
        price: "\$40/mo",
        bedroom: "06 bedroom",
        bathroom: "06 Bathroom",
        sqftCounter: "2468 sqft"),
    BedroomlistItemModel(
        shermanoaks: ImageConstant.imgRectangle1785811,
        shermanOaks: "Grand town",
        price: "\$40/mo",
        bedroom: "04 bedroom",
        bathroom: "04 Bathroom",
        sqftCounter: "2468 sqft"),
    BedroomlistItemModel(
        shermanoaks: ImageConstant.imgRectangle1785812,
        shermanOaks: "Sherman town",
        price: "\$40/mo",  bedroom: "02 bedroom",
        bathroom: "03 Bathroom",

        sqftCounter: "2468 sqft")
  ]);
}
