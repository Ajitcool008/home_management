import 'package:home_management/presentation/home_screen_page/widgets/propertylist_item_widget.dart';
import 'package:home_management/presentation/populr_property_screen/models/populr_property_model.dart';
import 'package:home_management/widgets/animation_widget.dart';

import 'controller/populr_property_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/widgets/app_bar/appbar_leading_image.dart';
import 'package:home_management/widgets/app_bar/appbar_subtitle.dart';
import 'package:home_management/widgets/app_bar/custom_app_bar.dart';



class PopulrPropertyScreen extends StatefulWidget {
  const PopulrPropertyScreen({super.key});

  @override
  State<PopulrPropertyScreen> createState() => _PopulrPropertyScreenState();
}

class _PopulrPropertyScreenState extends State<PopulrPropertyScreen> {
  PopulrPropertyController  popularPropertyController = Get.put(PopulrPropertyController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return GetBuilder(
      init: PopulrPropertyController(),
      builder: (controller) =>
      Scaffold(
          backgroundColor: appTheme.white,
          body: SafeArea(
            child: Container(
              width: double.infinity,
              color: appTheme.gray100,
              child: Column(
                children: [
                  _buildHeader(),
                  Expanded(
                    child:  animationFunction(0,
                      duration: Duration(milliseconds: 500),
                      GridView.builder(
                      primary: false,
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 16.h,vertical: 24.v),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 210.h,
                          mainAxisSpacing: 16.h,
                          crossAxisSpacing: 16.h),
                      itemCount:  popularPropertyListItemList.length,
                      itemBuilder: (context, index) =>  RecommendedFormat(
                        image: popularPropertyListItemList[index].image,
                        name: popularPropertyListItemList[index].name,
                        address: popularPropertyListItemList[index].address,
                        price: popularPropertyListItemList[index].price,
                        type: popularPropertyListItemList[index].type,
                        bed: popularPropertyListItemList[index].bed,
                        likeOnTap: () {
                        popularPropertyListItemList[
                          index]
                              .isFavourite =
                          !popularPropertyListItemList[
                          index]
                              .isFavourite;

                          popularPropertyController.update();
                        },
                        likeImage:popularPropertyListItemList[
                        index]
                            .isFavourite
                            ? ImageConstant.imgLikeGray900
                            : ImageConstant.imgLike,

                        bathtub: popularPropertyListItemList[index].bathtub,
                        onTap: () {
                          onTapProperty();
                        },
                      ),
                    ),)
                  ),

                ],
              ),
            ),
          )),
    );   }
  ///  /// Section Widget

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
            title: AppbarSubtitle(text: "msg_popular_property".tr)));
  }


  /// Navigates to the propertyDetailsScreen when the action is triggered.
  onTapProperty() {
    Get.toNamed(
      AppRoutes.propertyDetailsScreen,
    );
  }
}




