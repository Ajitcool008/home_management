// ignore_for_file: invalid_use_of_protected_member

import 'package:home_management/core/app_export.dart';

/// A controller class for the RecommendedForYouScreen.
///
/// This class manages the state of the RecommendedForYouScreen, including the
/// current recommendedForYouModelObj
class RecommendedForYouController extends GetxController {
  // Rx<RecommendedForYouModel> recommendedForYouModelObj =
  //     RecommendedForYouModel().obs;
     RxList favoriteList = [].obs;




  void addFavorite(int value){
    favoriteList.value.add(value);
  }
  void removeFavorite(int value){
    favoriteList.value.remove(value);
  }


}
