import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "01 Onboarding Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "02 Onboarding Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboarding1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "03 Onboarding Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboarding2Screen),
                        ),
                        // _buildScreenTitle(
                        //   screenTitle: "01 Log in defualt".tr,
                        //   onTapScreenTitle: () =>
                        //       onTapScreenTitle(AppRoutes.logInDefualtScreen),
                        // ),
                        // _buildScreenTitle(
                        //   screenTitle: "02 Log In Error".tr,
                        //   onTapScreenTitle: () =>
                        //       onTapScreenTitle(AppRoutes.logInErrorScreen),
                        // ),
                        _buildScreenTitle(
                          screenTitle: "03 Log In Active".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.logInActiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "04 Sign up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "05 Forgot password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "06 Verification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "07 Reset password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "01 Basic details Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.basicDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "02 Identity screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.identityScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "03 hobbies".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.hobbiesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "04 PErsonality".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.personalityScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "05 Living habits".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.livingHabitsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "01 Home screen - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homeScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "02 Populr property".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.populrPropertyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "03 Recommended for you".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.recommendedForYouScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "04 Property details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.propertyDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "05 Facilities".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.facilitiesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "04 Property details Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.propertyDetailsTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "04 Property details One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.propertyDetailsOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "06 Booking details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.bookingDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "07 payment method".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "01 ENter location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.enterLocationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "03 Expore With Search".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.exporeWithSearchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "01 Chats".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "03 Chat details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "04 Call Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.callDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "05 Videocall details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.videocallDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "02 Add property home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPropertyHomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "03 Add property details home ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addPropertyDetailsHomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "04 Add property details home filled".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addPropertyDetailsHomeFilledScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "05 Add property details home ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addPropertyDetailsHome1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "07 Add property details for roommate".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addPropertyDetailsForRoommateScreen),
                        ),
                        // _buildScreenTitle(
                        //   screenTitle:
                        //       "08 Add property details for roommate filled".tr,
                        //   onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                        //       .addPropertyDetailsForRoommateFilledScreen),
                        // ),
                        _buildScreenTitle(
                          screenTitle: "09 Add personal details".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addPersonalDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "10 Add property location".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addPropertyLocationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "12 Add event One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addEventOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "12 Add event".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addEventScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "13 Event location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.eventLocationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "02 Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profile1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "03 My profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "04 Edit profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Favorite".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.favoriteScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "08 My property".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myPropertyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "05 My cards".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myCardsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "06 Add new card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addNewCardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "07 Add new card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addNewCard1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "14 Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "09 Add new address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addNewAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "10 My address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "13 Edit address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "15 Notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "08 Privacy policy".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacyPolicyScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
