import 'package:home_management/core/app_export.dart';import 'package:home_management/presentation/add_new_card_screen/models/add_new_card_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddNewCardScreen.
///
/// This class manages the state of the AddNewCardScreen, including the
/// current addNewCardModelObj
class AddNewCardController extends GetxController {TextEditingController cardNumberEditTextController = TextEditingController();

TextEditingController expiryDateEditTextController = TextEditingController();

TextEditingController cvvEditTextController = TextEditingController();

Rx<AddNewCardModel> addNewCardModelObj = AddNewCardModel().obs;

@override void onClose() { super.onClose(); cardNumberEditTextController.dispose(); expiryDateEditTextController.dispose(); cvvEditTextController.dispose(); } 
 }
