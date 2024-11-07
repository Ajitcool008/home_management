import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/widgets/app_bar/appbar_leading_image.dart';
import 'package:home_management/widgets/app_bar/appbar_subtitle.dart';
import 'package:home_management/widgets/app_bar/custom_app_bar.dart';
import 'package:home_management/presentation/log_out_dialog/log_out_dialog.dart';
import 'package:home_management/presentation/log_out_dialog/controller/log_out_controller.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  SettingsController settingsController = Get.put(SettingsController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.white,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
              color: appTheme.gray100,
              width: double.maxFinite,
              child: Column(children: [
                _buildHeader(),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                    child: Column(children: [
                      _buildSetting(
                        ImageConstant.imgIcNotification,
                        "Notifications",
                        onTap: () {
                          Get.toNamed(AppRoutes.notificationsScreen);
                        },
                      ),
                      SizedBox(height: 16.v),
                      _buildSetting(ImageConstant.imgIcLocation, "My address",onTap: () {
                        Get.toNamed(AppRoutes.myAddressScreen);
                      },),
                      SizedBox(height: 16.v),
                      _buildSetting(
                          ImageConstant.imgIcPrivacy, "Privacy policy",onTap: () {
                        Get.toNamed(AppRoutes.privacyPolicyScreen);
                      },),
                      SizedBox(height: 16.v),
                      _buildSetting(ImageConstant.imgIcLogout, "Log out",onTap: () {
                        onTapProfileRow();
                      },),
                      SizedBox(height: 5.v)
                    ]))
              ])),
        ));
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
        padding: EdgeInsets.only(top: 18.v, bottom: 19.v),
        decoration: AppDecoration.outlineGray10001,
        child: CustomAppBar(
            leadingWidth: 44.h,
            leading: AppbarLeadingImage(
                onTap: () {
                  Get.back();
                },
                imagePath: ImageConstant.imgIcArrowLeft,
                margin: EdgeInsets.only(left: 20.h, top: 2.v, bottom: 5.v)),
            centerTitle: true,
            title: AppbarSubtitle(text: "lbl_settings".tr)));
  }

  /// Common widget
  Widget _buildSetting(String image, String name, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.v,
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: image,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            SizedBox(
              width: 16.h,
            ),
            Text(
              name,
              style: TextStyle(
                color: appTheme.gray900,
                fontSize: 16.fSize,
                fontFamily: 'Neutrif Pro',
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgIcArrowRight,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ],
        ),
      ),
    );
  }

  /// Displays a dialog with the [LogOutDialog] content.
  onTapProfileRow() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: LogOutDialog(
        Get.put(
          LogOutController(),
        ),
      ),
    ));
  }
}
