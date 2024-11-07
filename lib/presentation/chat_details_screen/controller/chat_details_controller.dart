import 'package:flutter/cupertino.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/chat_details_screen/models/chat_details_model.dart';

/// A controller class for the ChatDetailsScreen.
///
/// This class manages the state of the ChatDetailsScreen, including the
/// current chatDetailsModelObj
class ChatDetailsController extends GetxController {
  Rx<ChatDetailsModel> chatDetailsModelObj = ChatDetailsModel().obs;


  TextEditingController messageController = TextEditingController();
}
