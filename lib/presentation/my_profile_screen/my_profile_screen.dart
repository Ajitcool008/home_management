import 'dart:io';

import 'package:image_picker/image_picker.dart';

import 'controller/my_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/widgets/app_bar/appbar_leading_image.dart';
import 'package:home_management/widgets/app_bar/appbar_subtitle.dart';
import 'package:home_management/widgets/app_bar/appbar_trailing_image.dart';
import 'package:home_management/widgets/app_bar/custom_app_bar.dart';
import 'package:home_management/widgets/custom_icon_button.dart';



class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  MyProfileController myProfileController = Get.put(MyProfileController());

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  File? file;
  Future<void> pickImageMethod() async {
    ImagePicker pickImg = ImagePicker();
    XFile? xFile = await pickImg.pickImage(source: ImageSource.gallery);
    file = xFile != null ? File(xFile.path) : null;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.white,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Form(
              key: _formKey,
              child: Container(
                  color: appTheme.gray100,
                  width: double.maxFinite,
                  child: Column(children: [
                    _buildHeader(),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 24.v),
                        child: Column(children: [
                          Container(
                              height: 100.h,
                              width: 100.h,
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [

                                    CustomImageView(
                                        imagePath: ImageConstant.imgAvtar1,
                                        height: double.infinity,
                                        width: double.infinity,
                                        // height: 100.adaptSize,
                                        // width: 100.adaptSize,
                                        alignment: Alignment.center),
                                    GestureDetector(
                                      onTap: () {
                                        pickImageMethod();
                                      },
                                      child: CustomIconButton(
                                          height: 28.adaptSize,
                                          width: 28.adaptSize,
                                          padding: EdgeInsets.all(5.h),
                                          alignment: Alignment.bottomRight,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroup29Gray90028x28)),
                                    )
                                  ])),
                          SizedBox(height: 40.v),
                          _buildFrame(
                              userPhoneNumber: "lbl_name".tr,
                              userPhoneNumberText: "lbl_ronald_richards".tr),
                          SizedBox(height: 16.v),
                          _buildFrame(
                              userPhoneNumber: "lbl_email_address".tr,
                              userPhoneNumberText: "ronaldrichards@gmail.com"),
                          SizedBox(height: 16.v),
                          _buildFrame(
                              userPhoneNumber: "lbl_phone_number".tr,
                              userPhoneNumberText: "lbl_405_555_0128".tr),
                          SizedBox(height: 5.v)
                        ]))
                  ]))),
        ));
  } /// Section Widget
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
            title: AppbarSubtitle(text: "lbl_my_profile".tr),
            actions: [
              AppbarTrailingImage(
                  imagePath: ImageConstant.imgIcPencil,
                  margin: EdgeInsets.fromLTRB(16.h, 1.v, 16.h, 6.v),
                  onTap: () {
                    onTapIcPencil();
                  })
            ]));
  }

  /// Common widget
  Widget _buildFrame({
    required String userPhoneNumber,
    required String userPhoneNumberText,
  }) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(userPhoneNumber,
                  style: CustomTextStyles.bodyMediumGray800
                      .copyWith(color: appTheme.gray800)),
              SizedBox(height: 6.v),
              Text(userPhoneNumberText,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: appTheme.gray900)),
              SizedBox(height: 2.v)
            ]));
  }

  /// Navigates to the editProfileScreen when the action is triggered.
  onTapIcPencil() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }

}


