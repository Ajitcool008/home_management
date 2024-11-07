import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/home_screen_container_screen/models/home_screen_container_model.dart';

/// A controller class for the HomeScreenContainerScreen.
///
/// This class manages the state of the HomeScreenContainerScreen, including the
/// current homeScreenContainerModelObj
class HomeScreenContainerController extends GetxController {
  Rx<HomeScreenContainerModel> homeScreenContainerModelObj =
      HomeScreenContainerModel().obs;

  RxInt selectIndex = 0.obs;


  void selectBottomMethod( int value){
    selectIndex.value = value;
    update();
  }
}
