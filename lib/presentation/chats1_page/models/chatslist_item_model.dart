import '../../../core/app_export.dart';

/// This class is used in the [chatslist_item_widget] screen.

class ChatsListItemModel {
  String robertfox;

  String robertFox;

  String awesome;

  String time;

  int? id;

  ChatsListItemModel({
   required this.robertfox,
    required this.robertFox,
    required this.awesome,
    required this.time,
    this.id,
  }) ;


}


List<ChatsListItemModel> chatsListItemList = ([
  ChatsListItemModel(
      robertfox: ImageConstant.imgEllipse22,
      robertFox: "Robert fox",
      awesome: "Hello, good morning",
      time: "08:00"),
  ChatsListItemModel(
      robertfox: ImageConstant.imgEllipse2258x58,
      robertFox: "Esther howard",
      awesome: "How are you dude",
      time: "09:00"),
  ChatsListItemModel(
      robertfox: ImageConstant.imgEllipse221,
      robertFox: "Guy hawkins",
      awesome: "What about you",
      time: "10:00"),
  ChatsListItemModel(
      robertfox: ImageConstant.imgEllipse222,
      robertFox: "Jenny wilson",
      awesome: "I am fine",
      time: "11:00"),
  ChatsListItemModel(
      robertfox: ImageConstant.imgEllipse223,
      robertFox: "Ralph edwards",
      awesome: "Awesome",
      time: "18:00"),
  ChatsListItemModel(
      robertfox: ImageConstant.imgEllipse224,
      robertFox: "Leslie alexander",
      awesome: "What are you doing",
      time: "22:00"),
  ChatsListItemModel(
      robertfox: ImageConstant.imgEllipse225,
      robertFox: "Devon lane",
      awesome: "Awesome",
      time: "22:00"),
]);