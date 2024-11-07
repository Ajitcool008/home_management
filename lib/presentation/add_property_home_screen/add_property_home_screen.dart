import 'controller/add_property_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/widgets/app_bar/appbar_leading_image.dart';
import 'package:home_management/widgets/app_bar/appbar_subtitle.dart';
import 'package:home_management/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:home_management/widgets/app_bar/custom_app_bar.dart';
import 'package:home_management/widgets/custom_elevated_button.dart';

class AddPropertyHomeScreen extends StatefulWidget {
  const AddPropertyHomeScreen({super.key});

  @override
  State<AddPropertyHomeScreen> createState() => _AddPropertyHomeScreenState();
}

class _AddPropertyHomeScreenState extends State<AddPropertyHomeScreen> {
  AddPropertyHomeController addPropertyHomeController =
      Get.put(AddPropertyHomeController());

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
          child: Column(
            children: [
              _buildAppBar(),
              Expanded(
                child: ListView(
                  primary: true,
                  shrinkWrap: false,
                  padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl_i_want_to".tr,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 12.v),
                    _buildCheckboxRoundRow(),
                    SizedBox(height: 24.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl_prperty_type".tr,
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 12.v),
                    _buildCheckboxRound1(),
                    SizedBox(height: 16.v),
                    _buildCheckboxRound2(),
                  ],
                ),
              ),
              _buildBtnAndBgColumn(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar() {
    return Container(
        padding: EdgeInsets.only(top: 18.v, bottom: 19.v),
        decoration: AppDecoration.outlineGray10001,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 5.v),
          CustomAppBar(
              leadingWidth: 44.h,
              leading: AppbarLeadingImage(
                  onTap: () {
                    Get.back();
                    // setSafeAreaColor();
                  },
                  imagePath: ImageConstant.imgIcArrowLeft,
                  margin: EdgeInsets.only(left: 20.h, top: 5.v, bottom: 2.v)),
              centerTitle: true,
              title: AppbarSubtitle(text: "lbl_add_property".tr),
              actions: [
                AppbarSubtitleTwo(
                    text: "1/3",
                    margin: EdgeInsets.fromLTRB(16.h, 4.v, 16.h, 3.v))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildCheckboxRoundRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: Obx(
          () => GestureDetector(
            onTap: () {
              addPropertyHomeController.isRent.value =
                  !addPropertyHomeController.isRent.value;
              addPropertyHomeController.isSell.value = false;
            },
            child: Container(
              height: 59.v,
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.h),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rent',
                    style:  theme.textTheme.titleMedium
                  ),
                  addPropertyHomeController.isRent.value
                      ? CustomImageView(
                          imagePath: ImageConstant.imgCheckboxRound,
                          height: 24.adaptSize,
                          width: 24.adaptSize)
                      : CustomImageView(
                          imagePath: ImageConstant.imgBlackRadio,
                          height: 24.adaptSize,
                          width: 24.adaptSize)
                ],
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        width: 16.h,
      ),
      Expanded(
        child: Obx(
          () => GestureDetector(
            onTap: () {
              addPropertyHomeController.isSell.value =
                  !addPropertyHomeController.isSell.value;
              addPropertyHomeController.isRent.value = false;
            },
            child: Container(
              height: 59.v,
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.h),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_sell".tr,
                    style:  theme.textTheme.titleMedium
                  ),
                  addPropertyHomeController.isSell.value
                      ? CustomImageView(
                          imagePath: ImageConstant.imgCheckboxRound,
                          height: 24.adaptSize,
                          width: 24.adaptSize)
                      : CustomImageView(
                          imagePath: ImageConstant.imgBlackRadio,
                          height: 24.adaptSize,
                          width: 24.adaptSize)
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }

  /// Section Widget
  Widget _buildCheckboxRound1() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: Obx(
          () => GestureDetector(
            onTap: () {
              addPropertyHomeController.isApartment.value =
              !addPropertyHomeController.isApartment.value;
              addPropertyHomeController.isPenthouse.value = false;
              addPropertyHomeController.isHouse.value = false;
              addPropertyHomeController.isVilla.value = false;
            },
            child: Container(
              height: 59.v,
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.h),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_apartment".tr,
                    style:  theme.textTheme.titleMedium
                  ),
                  addPropertyHomeController.isApartment.value
                      ? CustomImageView(
                          imagePath: ImageConstant.imgCheckboxRound,
                          height: 24.adaptSize,
                          width: 24.adaptSize)
                      : CustomImageView(
                          imagePath: ImageConstant.imgBlackRadio,
                          height: 24.adaptSize,
                          width: 24.adaptSize)
                ],
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        width: 16.h,
      ),
      Expanded(
        child: Obx(
          () => GestureDetector(
            onTap: () {
              addPropertyHomeController.isHouse.value =
              !addPropertyHomeController.isHouse.value;
              addPropertyHomeController.isApartment.value = false;
              addPropertyHomeController.isPenthouse.value = false;
              addPropertyHomeController.isVilla.value = false;
            },
            child: Container(
              height: 59.v,
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.h),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "House",
                    style:  theme.textTheme.titleMedium
                  ),
                  addPropertyHomeController.isHouse.value
                      ? CustomImageView(
                          imagePath: ImageConstant.imgCheckboxRound,
                          height: 24.adaptSize,
                          width: 24.adaptSize)
                      : CustomImageView(
                          imagePath: ImageConstant.imgBlackRadio,
                          height: 24.adaptSize,
                          width: 24.adaptSize)
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }

  /// Section Widget
  Widget _buildCheckboxRound2() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        child: Obx(
          () => GestureDetector(
            onTap: () {
              addPropertyHomeController.isPenthouse.value =
              !addPropertyHomeController.isPenthouse.value;
              addPropertyHomeController.isApartment.value = false;
              addPropertyHomeController.isHouse.value = false;
              addPropertyHomeController.isVilla.value = false;
            },
            child: Container(
              height: 59.v,
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.h),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Penthouse",
                    style:  theme.textTheme.titleMedium
                  ),
                  addPropertyHomeController.isPenthouse.value
                      ? CustomImageView(
                          imagePath: ImageConstant.imgCheckboxRound,
                          height: 24.adaptSize,
                          width: 24.adaptSize)
                      : CustomImageView(
                          imagePath: ImageConstant.imgBlackRadio,
                          height: 24.adaptSize,
                          width: 24.adaptSize)
                ],
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        width: 16.h,
      ),
      Expanded(
        child: Obx(
          () => GestureDetector(
            onTap: () {
              addPropertyHomeController.isVilla.value =
                  !addPropertyHomeController.isVilla.value;
              addPropertyHomeController.isApartment.value = false;
              addPropertyHomeController.isHouse.value = false;
              addPropertyHomeController.isPenthouse.value = false;
            },
            child: Container(
              height: 59.v,
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 18.v),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.h),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_villa".tr,
                    style:  theme.textTheme.titleMedium
                  ),
                  addPropertyHomeController.isVilla.value
                      ? CustomImageView(
                          imagePath: ImageConstant.imgCheckboxRound,
                          height: 24.adaptSize,
                          width: 24.adaptSize)
                      : CustomImageView(
                          imagePath: ImageConstant.imgBlackRadio,
                          height: 24.adaptSize,
                          width: 24.adaptSize)
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }

  /// Section Widget
  Widget _buildNext() {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        onPressed: () {
          onTapNext();
        });
  }

  /// Section Widget
  Widget _buildBtnAndBgColumn() {
    return Container(
        height: 112.v,
        padding: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 40.v),
        decoration: AppDecoration.white,
        child: _buildNext());
  }

  /// Navigates to the addPropertyDetailsHomeScreen when the action is triggered.
  onTapNext() {
    Get.toNamed(
      AppRoutes.addPropertyDetailsHomeScreen,
    );
  }
}
