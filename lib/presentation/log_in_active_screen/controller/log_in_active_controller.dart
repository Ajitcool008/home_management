import 'package:home_management/core/app_export.dart';import 'package:home_management/presentation/log_in_active_screen/models/log_in_active_model.dart';import 'package:flutter/material.dart';/// A controller class for the LogInActiveScreen.
///
/// This class manages the state of the LogInActiveScreen, including the
/// current logInActiveModelObj
class LogInActiveController extends GetxController {
 TextEditingController emailFieldController = TextEditingController();

TextEditingController passwordFieldController = TextEditingController();

Rx<LogInActiveModel> logInActiveModelObj = LogInActiveModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); emailFieldController.dispose(); passwordFieldController.dispose(); } 
 }
