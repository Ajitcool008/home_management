
// ignore_for_file: must_be_immutable

import 'package:home_management/presentation/home_screen_page/controller/home_screen_controller.dart';
import 'package:home_management/presentation/home_screen_page/home_screen_page.dart';

import 'controller/home_screen_tab_container_controller.dart';
import 'models/home_screen_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';

class HomeScreenTabContainerPage extends StatelessWidget {
  HomeScreenTabContainerPage({Key? key})
      : super(
          key: key,
        );

  HomeScreenTabContainerController controller = Get.put(
      HomeScreenTabContainerController(HomeScreenTabContainerModel().obs));
  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return GetBuilder(
      init: HomeScreenController(),
      builder: (controller) => Container(
        color: appTheme.gray100,
        child: Stack(
          children: [
            _buildHelloRonaldRichardsStack(),
            HomeScreenPage()
            // Expanded(
            //   child: HomeScreenPage(),
            // )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHelloRonaldRichardsStack() {
    return SizedBox(
      // height: 384.v,
      width: double.maxFinite,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          
          Container(
            height: 250.v,
            padding: EdgeInsets.symmetric(vertical: 16.v),
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL16,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgRectangle34624202,
                  ),
                  fit: BoxFit.fill,
                )),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: SizedBox(
                height: 66.v,
                child: SafeArea(
                  bottom: false,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hello,\nronald richards 👋',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.fSize,
                          fontFamily: 'Neutrif Pro',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.notificationsScreen);
                        },
                        child: Container(
                          height: 36.v,
                          width: 36.h,
                          padding: EdgeInsets.all(7.h),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xFf4D7D78)),
                            shape: BoxShape.circle,
                          ),
                          child: CustomImageView(
                            color: Colors.white,
                            imagePath: ImageConstant.imgIcNotification,
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }


}
