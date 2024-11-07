import 'package:home_management/core/app_export.dart';import 'package:home_management/presentation/my_property_screen/models/my_property_model.dart';/// A controller class for the MyPropertyScreen.
///
/// This class manages the state of the MyPropertyScreen, including the
/// current myPropertyModelObj
class MyPropertyController extends GetxController {Rx<MyPropertyModel> myPropertyModelObj = MyPropertyModel().obs;

 }
