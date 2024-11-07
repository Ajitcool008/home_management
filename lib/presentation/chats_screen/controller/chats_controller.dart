import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/chats_screen/models/chats_model.dart';

/// A controller class for the ChatsScreen.
///
/// This class manages the state of the ChatsScreen, including the
/// current chatsModelObj
class ChatsController extends GetxController {
  Rx<ChatsModel> chatsModelObj = ChatsModel().obs;
}
