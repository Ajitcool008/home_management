import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/add_property_details_for_roommate_screen/models/add_property_details_for_roommate_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddPropertyDetailsForRoommateScreen.
///
/// This class manages the state of the AddPropertyDetailsForRoommateScreen, including the
/// current addPropertyDetailsForRoommateModelObj
class AddPropertyDetailsForRoommateController extends GetxController {
  TextEditingController fieldLableController = TextEditingController();

  TextEditingController placeholderController = TextEditingController();

  TextEditingController bedController = TextEditingController();

  TextEditingController bathsController = TextEditingController();


  TextEditingController sQFTController = TextEditingController();

  TextEditingController inputBoxController = TextEditingController();

  TextEditingController monthlyRentController = TextEditingController();

  TextEditingController depositController = TextEditingController();

  TextEditingController inputBoxController1 = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController timeController = TextEditingController();

  Rx<AddPropertyDetailsForRoommateModel> addPropertyDetailsForRoommateModelObj =
      AddPropertyDetailsForRoommateModel().obs;



  Rx<bool> wifi = false.obs;

  Rx<bool> elevator = false.obs;

  Rx<bool> furniture = false.obs;

  Rx<bool> generator = false.obs;

  Rx<bool> airCondition = false.obs;

  Rx<bool> students = false.obs;

  Rx<bool> male = false.obs;

  Rx<bool>  petLover = false.obs;

  Rx<bool> vegetarian = false.obs;

  Rx<bool> nonsmoker = false.obs;

  @override
  void onClose() {
    super.onClose();
    fieldLableController.dispose();
    placeholderController.dispose();
    bedController.dispose();
    bathsController.dispose();
    sQFTController.dispose();
    monthlyRentController.dispose();
    depositController.dispose();
    inputBoxController.dispose();
    inputBoxController1.dispose();
    dateController.dispose();
    timeController.dispose();
  }
}
