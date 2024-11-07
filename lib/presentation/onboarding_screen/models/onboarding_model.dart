
import '../../../core/app_export.dart';

/// This class defines the variables used in the [onboarding_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardingModel {


  String imageUrl;
  String text;
  String subTittle;

  OnboardingModel(
      {required this.imageUrl, required this.text, required this.subTittle});

   static List<OnboardingModel> pages = [
    OnboardingModel(
      imageUrl: ImageConstant.img01OnboardingScreen,
      text: "Looking for a place to raise your family? look no further!",
      subTittle: 'Investment opportunity! This commercial property has high traffic and visibility',
    ),
    OnboardingModel(
      imageUrl: ImageConstant.img02OnboardingScreen,
      text: "Don't settle for anything less than your dream home.",
      subTittle: 'Investment opportunity! This commercial property has high traffic and visibility',
    ),
    OnboardingModel(
      imageUrl: ImageConstant.img03OnboardingScreen,
      text: "Attention first home buyers Your dream home is here",
      subTittle: 'Investment opportunity! This commercial property has high traffic and visibility',
    ),

  ];

}
