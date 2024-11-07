import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/my_cards_screen/models/my_cards_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MyCardsScreen.
///
/// This class manages the state of the MyCardsScreen, including the
/// current myCardsModelObj
class MyCardsController extends GetxController {
  TextEditingController paymentDetailsController = TextEditingController();

  Rx<MyCardsModel> myCardsModelObj = MyCardsModel().obs;

  @override
  void onClose() {
    super.onClose();
    paymentDetailsController.dispose();
  }
}
