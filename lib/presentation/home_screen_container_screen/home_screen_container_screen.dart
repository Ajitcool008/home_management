import 'package:flutter/services.dart';
import 'package:home_management/presentation/chats_screen/chats_screen.dart';
import 'package:home_management/presentation/enter_location_screen/enter_location_screen.dart';
import 'controller/home_screen_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/presentation/home_screen_tab_container_page/home_screen_tab_container_page.dart';
import 'package:home_management/presentation/profile_page/profile_page.dart';
import 'package:home_management/widgets/custom_bottom_bar.dart';

class HomeScreenContainerScreen extends StatefulWidget {
  const HomeScreenContainerScreen({super.key});

  @override
  State<HomeScreenContainerScreen> createState() =>
      _HomeScreenContainerScreenState();
}

class _HomeScreenContainerScreenState extends State<HomeScreenContainerScreen> {
  HomeScreenContainerController homeScreenContainerController =
      Get.put(HomeScreenContainerController());
  List<Widget> pages = [
    HomeScreenTabContainerPage(),
    EnterLocationScreen(),
    // AddPropertyBottomSheet(),
    SizedBox(),
    // DefaultWidget(),
    ChatsScreen(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        if (homeScreenContainerController.selectIndex.value == 0) {
          showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) {
              return AlertDialog(
                insetPadding: EdgeInsets.symmetric(horizontal: 26.h),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.h)),
                contentPadding: EdgeInsets.zero,
                content: Container(
                  width: 376.h,
                  padding: EdgeInsets.only(top: 24.h, bottom: 24.h),
                  // decoration: AppDecoration.white.copyWith(
                  //
                  //     borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Text(
                          "Are you sure you want to Exit?",
                          style: theme.textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 31.h,
                          top: 24.h,
                          right: 31.h,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.h, vertical: 15.v),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(200.h),
                                      border:
                                          Border.all(color: appTheme.green700 )),
                                  child: Text(
                                    "No",
                                    style:
                                    theme.textTheme.titleMedium!.copyWith(
                                      color: appTheme.green700,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20.h,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  SystemNavigator.pop();
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.h, vertical: 15.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.buttonColor,
                                    borderRadius: BorderRadius.circular(200.h),
                                  ),
                                  child: Text(
                                    "Yes",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        } else {
          homeScreenContainerController.selectBottomMethod(0);
          // Get.back();
        }
        return false;
      },
      child: Scaffold(
        backgroundColor: appTheme.white,
           body: Obx(() => pages[homeScreenContainerController.selectIndex.value]),
        bottomNavigationBar: CustomBottomBar(),
      ),
    );
  }


}

