import 'controller/basic_details_add_success_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class BasicDetailsAddSuccessDialog extends StatelessWidget {
  BasicDetailsAddSuccessDialog(this.controller, {Key? key}) : super(key: key);

  BasicDetailsAddSuccessController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        // width: 396.h,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 24.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
              height: 120.adaptSize,
              width: 120.adaptSize,
              padding: EdgeInsets.all(28.h),
              decoration: AppDecoration.fillBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder60),
              child: CustomImageView(
                  imagePath: ImageConstant.imgVectorPrimarycontainer,
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                  alignment: Alignment.center)),
          SizedBox(height: 9.v),
          Text("msg_information_added".tr,
              style: theme.textTheme.headlineSmall,textAlign: TextAlign.center,maxLines: 1),
          SizedBox(height: 16.v),
          Text("msg_you_have_successfully2".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge!.copyWith(height: 1.50.v)),
          SizedBox(height: 40.v),
          CustomElevatedButton(
              height: 53.v,
              text: "lbl_go_to_home".tr,
              margin: EdgeInsets.symmetric(horizontal: 45.h),
              onPressed: () {
                onTapGoToHome();
              })
        ]));
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapGoToHome() {
    Get.toNamed(
      AppRoutes.homeScreenContainerScreen,
    );
  }
}