import 'package:home_management/core/app_export.dart';import 'package:home_management/presentation/edit_address_screen/models/edit_address_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditAddressScreen.
///
/// This class manages the state of the EditAddressScreen, including the
/// current editAddressModelObj
class EditAddressController extends GetxController {TextEditingController masterUsernameAddresslineOneController = TextEditingController();

TextEditingController masterUsernameAddresslineTwoController = TextEditingController();

TextEditingController cityController = TextEditingController();

TextEditingController inputBoxController = TextEditingController();
TextEditingController phoneNumberController = TextEditingController();

TextEditingController countryController = TextEditingController();

Rx<EditAddressModel> editAddressModelObj = EditAddressModel().obs;

@override void onClose() { super.onClose(); masterUsernameAddresslineOneController.dispose(); masterUsernameAddresslineTwoController.dispose(); cityController.dispose(); inputBoxController.dispose(); countryController.dispose(); } 
 }
