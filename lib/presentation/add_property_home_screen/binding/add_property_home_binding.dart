import '../controller/add_property_home_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddPropertyHomeScreen.
///
/// This class ensures that the AddPropertyHomeController is created when the
/// AddPropertyHomeScreen is first loaded.
class AddPropertyHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPropertyHomeController());
  }
}
