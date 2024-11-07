import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/add_property_location_screen/models/add_property_location_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddPropertyLocationScreen.
///
/// This class manages the state of the AddPropertyLocationScreen, including the
/// current addPropertyLocationModelObj
class AddPropertyLocationController extends GetxController {
  TextEditingController addressController = TextEditingController();

  TextEditingController addressController1 = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController inputBoxController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  Rx<AddPropertyLocationModel> addPropertyLocationModelObj =
      AddPropertyLocationModel().obs;

  @override
  void onClose() {
    super.onClose();
    addressController.dispose();
    addressController1.dispose();
    cityController.dispose();
    inputBoxController.dispose();
    countryController.dispose();
  }
}
