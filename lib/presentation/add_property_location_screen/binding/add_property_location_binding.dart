import '../controller/add_property_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddPropertyLocationScreen.
///
/// This class ensures that the AddPropertyLocationController is created when the
/// AddPropertyLocationScreen is first loaded.
class AddPropertyLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddPropertyLocationController());
  }
}
