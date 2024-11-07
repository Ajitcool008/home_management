import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_management/widgets/custom_text_form_field.dart';

import 'controller/chat_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';

class ChatDetailsScreen extends StatefulWidget {
  const ChatDetailsScreen({super.key});

  @override
  State<ChatDetailsScreen> createState() => _ChatDetailsScreenState();
}

class _ChatDetailsScreenState extends State<ChatDetailsScreen> {
  ChatDetailsController chatDetailsController =
      Get.put(ChatDetailsController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appTheme.white,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          color: appTheme.gray100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              _buildAppBar(),
              Expanded(
                child: ListView(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.v),
                  primary: true,
                  shrinkWrap: false,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Text("lbl_today".tr,
                            style: theme.textTheme.bodyMedium)),
                    SizedBox(height: 26.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 12.v),
                            decoration: AppDecoration.fillPrimaryContainer1
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL121),
                            child: Text("lbl_hi_esther".tr,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodyLargeOnPrimaryContainer
                                    .copyWith(height: 1.50.v))),
                      ],
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 12.v),
                            decoration: AppDecoration.fillPrimaryContainer1
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL121),
                            child: Text("msg_i_m_looking_for".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .bodyLargeOnPrimaryContainer
                                    .copyWith(height: 1.50.v))),
                      ],
                    ),
                    SizedBox(height: 8.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("lbl_12_00".tr,
                            style: CustomTextStyles.bodyMediumGray800),
                      ],
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 16.v),
                            decoration: AppDecoration.outlineBlack9001.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTR121),
                            child: Text("msg_hi_ronald_of_course".tr,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(height: 1.50.v))),
                      ],
                    ),
                    SizedBox(height: 8.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl_12_00".tr,
                            style: CustomTextStyles.bodyMediumGray800)),
                    SizedBox(height: 16.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 16.v),
                            decoration: AppDecoration.fillPrimaryContainer1
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL121),
                            child: SizedBox(
                                width: 242.h,
                                child: Text("msg_that_s_great_thank".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyLargeOnPrimaryContainer
                                        .copyWith(height: 1.50.v)))),
                      ],
                    ),
                    SizedBox(height: 8.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("lbl_12_00".tr,
                            style: CustomTextStyles.bodyMediumGray800),
                      ],
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 16.v),
                            decoration: AppDecoration.outlineBlack9001.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTR121),
                            child: Text("msg_of_course_see_you".tr,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(height: 1.50.v))),
                      ],
                    ),
                    SizedBox(height: 8.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl_12_00".tr,
                            style: CustomTextStyles.bodyMediumGray800)),
                  ],
                ),
              ),
              _buildWriteAReply(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget

  /// Section Widget
  Widget _buildAppBar() {
    return Container(
      height: 83.v,
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.v),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: SvgPicture.asset(
              ImageConstant.imgIcArrowLeft,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          SizedBox(
            width: 16.h,
          ),
          Image.asset(
            ImageConstant.imgEllipse23,
            height: 50.adaptSize,
            width: 50.adaptSize,
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: 16.h,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Esther howard",
                  style: theme.textTheme.titleLarge,
                ),
                Text(
                  "Online",
                  style: theme.textTheme.bodyLarge!.copyWith(
                    fontSize: 13.fSize,
                    color: appTheme.greenA700,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(
                AppRoutes.videocallDetailsScreen,
              );
            },
            child: SvgPicture.asset(
              ImageConstant.imgIcVideocall,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
          SizedBox(
            width: 24.h,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(
                AppRoutes.callDetailsScreen,
              );
            },
            child: SvgPicture.asset(
              ImageConstant.imgIcCall,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWriteAReply() {
    return Container(
        height: 100.v,
        padding: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 40.v),
        decoration: AppDecoration.white,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgIcAddCircle,
              height: 30.adaptSize,
              width: 30.adaptSize),
          SizedBox(
            width: 8.h,
          ),
          SizedBox(
              height: 26.v, child: VerticalDivider(width: 1.h, thickness: 1.v)),
          Expanded(
            child: CustomTextFormField(
              controller: chatDetailsController.messageController,
              hintText: "msg_write_a_reply".tr,
              borderDecoration: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.h),
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Image.asset(
            "assets/images/Box With icon white bg.png",
            height: 44.adaptSize,
            width: 44.adaptSize,
          )
        ]));
  }

  /// Navigates to the videocallDetailsScreen when the action is triggered.
  onTapIcVideocall() {
    Get.toNamed(
      AppRoutes.videocallDetailsScreen,
    );
  }

  /// Navigates to the callDetailsScreen when the action is triggered.
  onTapIcCall() {
    Get.toNamed(
      AppRoutes.callDetailsScreen,
    );
  }
}
