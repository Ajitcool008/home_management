import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/notifications_screen/models/notifications_model.dart';

/// A controller class for the NotificationsScreen.
///
/// This class manages the state of the NotificationsScreen, including the
/// current notificationsModelObj
class NotificationsController extends GetxController {
  Rx<NotificationsModel> notificationsModelObj = NotificationsModel().obs;
}
