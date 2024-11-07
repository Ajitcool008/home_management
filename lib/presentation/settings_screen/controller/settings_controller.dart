import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/settings_screen/models/settings_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SettingsScreen.
///
/// This class manages the state of the SettingsScreen, including the
/// current settingsModelObj
class SettingsController extends GetxController {
  TextEditingController profileController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  Rx<SettingsModel> settingsModelObj = SettingsModel().obs;

  @override
  void onClose() {
    super.onClose();
    profileController.dispose();
    addressController.dispose();
  }
}
