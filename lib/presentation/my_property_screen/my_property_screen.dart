import 'package:home_management/widgets/animation_widget.dart';

import '../my_property_screen/widgets/bedroomlist_item_widget.dart';
import 'controller/my_property_controller.dart';
import 'models/bedroomlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/widgets/app_bar/appbar_leading_image.dart';
import 'package:home_management/widgets/app_bar/appbar_subtitle.dart';
import 'package:home_management/widgets/app_bar/custom_app_bar.dart';

class MyPropertyScreen extends StatefulWidget {
  const MyPropertyScreen({super.key});

  @override
  State<MyPropertyScreen> createState() => _MyPropertyScreenState();
}

class _MyPropertyScreenState extends State<MyPropertyScreen> {
  MyPropertyController myPropertyController = Get.put(MyPropertyController());
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
            children: [
              _buildHeader(),
              _buildBedroomList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
      padding: EdgeInsets.only(
        top: 18.v,
        bottom: 19.v,
      ),
      decoration: AppDecoration.outlineGray10001,
      child: CustomAppBar(
        leadingWidth: 44.h,
        leading: AppbarLeadingImage(
          onTap: () {
            Get.back();
          },
          imagePath: ImageConstant.imgIcArrowLeft,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 2.v,
            bottom: 5.v,
          ),
        ),
        centerTitle: true,
        title: AppbarSubtitle(
          text: "lbl_my_property".tr,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBedroomList() {
    return Expanded(
      child: Obx(
        () => animationFunction(0, ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 16.h,vertical: 24.v),
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
              context,
              index,
              ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount: myPropertyController
              .myPropertyModelObj.value.bedroomlistItemList.value.length,
          itemBuilder: (context, index) {
            BedroomlistItemModel model = myPropertyController
                .myPropertyModelObj.value.bedroomlistItemList.value[index];
            return BedroomlistItemWidget(
              model,
            );
          },
        ),),
      ),
    );
  }
}
