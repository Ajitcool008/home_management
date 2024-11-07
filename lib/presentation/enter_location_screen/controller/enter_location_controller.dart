import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/enter_location_screen/models/enter_location_model.dart';

/// A controller class for the EnterLocationScreen.
///
/// This class manages the state of the EnterLocationScreen, including the
/// current enterLocationModelObj
class EnterLocationController extends GetxController {
  Rx<EnterLocationModel> enterLocationModelObj = EnterLocationModel().obs;

  RxBool isTap = false.obs;

  TextEditingController searchController = TextEditingController();

  RxBool isSubmit = false.obs;
  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
