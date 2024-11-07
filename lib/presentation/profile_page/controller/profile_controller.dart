import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/profile_page/models/profile_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfilePage.
///
/// This class manages the state of the ProfilePage, including the
/// current profileModelObj
class ProfileController extends GetxController {
  ProfileController(this.profileModelObj);

  TextEditingController profileEditText1Controller = TextEditingController();

  TextEditingController profileEditText2Controller = TextEditingController();

  TextEditingController profileEditText3Controller = TextEditingController();

  TextEditingController profileEditText4Controller = TextEditingController();

  TextEditingController profileEditText5Controller = TextEditingController();

  Rx<ProfileModel> profileModelObj;

  @override
  void onClose() {
    super.onClose();
    profileEditText1Controller.dispose();
    profileEditText2Controller.dispose();
    profileEditText3Controller.dispose();
    profileEditText4Controller.dispose();
    profileEditText5Controller.dispose();
  }
}
