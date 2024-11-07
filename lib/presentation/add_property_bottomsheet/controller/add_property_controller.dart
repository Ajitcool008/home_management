import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/add_property_bottomsheet/models/add_property_model.dart';

/// A controller class for the AddPropertyBottomsheet.
///
/// This class manages the state of the AddPropertyBottomsheet, including the
/// current addPropertyModelObj
class AddPropertyController extends GetxController {
  Rx<AddPropertyModel> addPropertyModelObj = AddPropertyModel().obs;
}
