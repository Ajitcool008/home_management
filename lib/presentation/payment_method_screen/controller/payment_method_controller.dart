import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/payment_method_screen/models/payment_method_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the PaymentMethodScreen.
///
/// This class manages the state of the PaymentMethodScreen, including the
/// current paymentMethodModelObj
class PaymentMethodController extends GetxController {
  TextEditingController paymentDetailsController = TextEditingController();

  Rx<PaymentMethodModel> paymentMethodModelObj = PaymentMethodModel().obs;

  RxBool isPaypal = false.obs;
  RxBool isVisa = false.obs;
  RxBool isApplePay = false.obs;
  RxBool isGooglePay = false.obs;

  //
  // RxString payment ="Payment".obs;
  // RxString paypal ="Paypal".obs;
  // RxString visa ="Visa".obs;
  // RxString applePay ="ApplePay".obs;
  // RxString googlePay ="GooglePay".obs;





  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;

  Rx<String> radioGroup2 = "".obs;

  @override
  void onClose() {
    super.onClose();
    paymentDetailsController.dispose();
  }
}
