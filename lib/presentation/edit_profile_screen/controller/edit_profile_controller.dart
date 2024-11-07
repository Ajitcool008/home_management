import 'package:home_management/core/app_export.dart';import 'package:home_management/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();
TextEditingController phoneNumberController = TextEditingController();


Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

@override void onClose() { super.onClose(); fullNameController.dispose(); emailController.dispose(); } 
 }
