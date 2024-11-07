import 'package:home_management/core/app_export.dart';import 'package:home_management/presentation/my_profile_screen/models/my_profile_model.dart';import 'package:flutter/material.dart';/// A controller class for the MyProfileScreen.
///
/// This class manages the state of the MyProfileScreen, including the
/// current myProfileModelObj
class MyProfileController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<MyProfileModel> myProfileModelObj = MyProfileModel().obs;

@override void onClose() { super.onClose(); emailController.dispose(); } 
 }
