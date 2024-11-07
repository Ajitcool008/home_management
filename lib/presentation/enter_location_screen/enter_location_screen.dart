import 'package:home_management/presentation/expore_page/expore_page.dart';

import 'controller/enter_location_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';

import 'package:home_management/widgets/custom_elevated_button.dart';

class EnterLocationScreen extends StatefulWidget {
  const EnterLocationScreen({super.key});

  @override
  State<EnterLocationScreen> createState() => _EnterLocationScreenState();
}

class _EnterLocationScreenState extends State<EnterLocationScreen> {
  EnterLocationController enterLocationController =
      Get.put(EnterLocationController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: GetBuilder<EnterLocationController>(
        init: EnterLocationController(),
        builder: (controller) => Container(
                color: appTheme.gray100,
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildHeaderSection(),
                    enterLocationController.isTap.value
                        ? ExporePage()
                        :
                    Expanded(
                      child: Container(
                        color: appTheme.gray100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 119.v,
                              width: 121.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 28.h,
                                vertical: 27.v,
                              ),
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder60,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgLocation11,
                                height: 64.adaptSize,
                                width: 64.adaptSize,
                                alignment: Alignment.center,
                              ),
                            ),
                            SizedBox(height: 35.v),
                            Text(
                              "msg_hello_nice_to_meet".tr,
                              style: theme.textTheme.headlineSmall,
                            ),
                            SizedBox(height: 16.v),
                            SizedBox(
                              width: 277.h,
                              child: Text(
                                "msg_we_access_your_location".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  height: 1.50.v,
                                ),
                              ),
                            ),
                            SizedBox(height: 31.v),
                            CustomElevatedButton(
                              text: "msg_user_current_location".tr,
                              margin: EdgeInsets.symmetric(horizontal: 42.h),
                              onPressed: () {
                                enterLocationController.isTap.value = true;
                                enterLocationController.update();
                              },
                            ),
                            SizedBox(height: 18.v),
                            Text(
                              "msg_add_manually_location".tr,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
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
  Widget _buildHeaderSection() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: EdgeInsets.only(top: 18.v, bottom: 19.v),
      decoration: AppDecoration.outlineGray10001,
      child: Text(
        "lbl_explore".tr,
        style: theme.textTheme.headlineSmall,
      ),
    );
  }
}
