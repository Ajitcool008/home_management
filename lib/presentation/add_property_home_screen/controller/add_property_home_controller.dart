import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/add_property_home_screen/models/add_property_home_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddPropertyHomeScreen.
///
/// This class manages the state of the AddPropertyHomeScreen, including the
/// current addPropertyHomeModelObj
class AddPropertyHomeController extends GetxController {
  TextEditingController checkboxroundController = TextEditingController();

  TextEditingController checkboxroundController1 = TextEditingController();

  TextEditingController checkboxroundController2 = TextEditingController();

  Rx<AddPropertyHomeModel> addPropertyHomeModelObj = AddPropertyHomeModel().obs;
  RxBool isSell = false.obs;
  RxBool isRent = false.obs;
  RxBool isApartment = false.obs;
  RxBool isHouse = false.obs;
  RxBool isPenthouse = false.obs;
  RxBool isVilla = false.obs;

  @override
  void onClose() {
    super.onClose();
    checkboxroundController.dispose();
    checkboxroundController1.dispose();
    checkboxroundController2.dispose();
  }
}
