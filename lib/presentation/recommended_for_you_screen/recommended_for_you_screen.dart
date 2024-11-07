import 'package:home_management/presentation/home_screen_page/widgets/propertylist_item_widget.dart';
import 'package:home_management/presentation/recommended_for_you_screen/models/recommended_for_you_model.dart';
import 'package:home_management/widgets/animation_widget.dart';

import '../recommended_for_you_screen/widgets/propertygrid1_item_widget.dart';
import 'controller/recommended_for_you_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/widgets/app_bar/appbar_leading_image.dart';
import 'package:home_management/widgets/app_bar/appbar_subtitle.dart';
import 'package:home_management/widgets/app_bar/custom_app_bar.dart';

class RecommendedForYouScreen extends StatefulWidget {
  const RecommendedForYouScreen({super.key});

  @override
  State<RecommendedForYouScreen> createState() =>
      _RecommendedForYouScreenState();
}

class _RecommendedForYouScreenState extends State<RecommendedForYouScreen> {
  RecommendedForYouController recommendedForYouController =
      Get.put(RecommendedForYouController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return GetBuilder<RecommendedForYouController>(
      init: RecommendedForYouController(),
      builder: (controller) => Scaffold(
          backgroundColor: appTheme.white,
          body: SafeArea(
            child: Container(
              width: double.infinity,
              color: appTheme.gray100,
              child: Column(
                children: [
                  _buildHeader(),
                  Expanded(
                    child: animationFunction(
                      0,
                      duration: Duration(milliseconds: 500),
                      GridView.builder(
                          primary: false,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 24.v),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisExtent: 210.h,
                                  mainAxisSpacing: 16.h,
                                  crossAxisSpacing: 16.h),
                          itemCount: recommendedPropertyListItemList.length,
                          itemBuilder: (context, index) {
                            return recommendedPropertyListItemList[index]
                                        .type ==
                                    "/entry"
                                ? RecommendedEntryFormat(
                                    image:
                                        recommendedPropertyListItemList[index]
                                            .image,
                                    name: recommendedPropertyListItemList[index]
                                        .name,
                                    address:
                                        recommendedPropertyListItemList[index]
                                            .address,
                                    price:
                                        recommendedPropertyListItemList[index]
                                            .price,
                                    type: recommendedPropertyListItemList[index]
                                        .type,
                                    onTap: () {
                                      onTapEntryProperty();
                                    },
                                    likeOnTap: () {
                                      // recommendedPropertyListItemList[
                                      //             index]
                                      //         .isFavourite =
                                      //     !recommendedPropertyListItemList[
                                      //             index]
                                      //         .isFavourite;
                                      if(recommendedForYouController.favoriteList.contains(index)){
                                        recommendedForYouController.removeFavorite(index);
                                      }else{
                                        recommendedForYouController.addFavorite(index);
                                      }

                                      recommendedForYouController.update();
                                    },
                                    likeImage:
                                    recommendedForYouController.favoriteList.contains(index)

                              // recommendedPropertyListItemList[
                              //                   index]
                              //               .isFavourite
                                        ? ImageConstant.imgLikeGray900
                                        : ImageConstant.imgLike,
                                  )
                                : RecommendedFormat(
                                    image:
                                        recommendedPropertyListItemList[index]
                                            .image,
                                    name: recommendedPropertyListItemList[index]
                                        .name,
                                    address:
                                        recommendedPropertyListItemList[index]
                                            .address,
                                    price:
                                        recommendedPropertyListItemList[index]
                                            .price,
                                    type: recommendedPropertyListItemList[index]
                                        .type,
                                    bed: recommendedPropertyListItemList[index]
                                        .bed,
                                    bathtub:
                                        recommendedPropertyListItemList[index]
                                            .bathtub,
                                    onTap: () {
                                      onTapProperty();
                                    },
                                    likeOnTap: () {
                                          //     recommendedPropertyListItemList[
                                          //         index]
                                          //     .isFavourite =
                                          // !recommendedPropertyListItemList[
                                          //         index]
                                          //     .isFavourite;
                                      if(recommendedForYouController.favoriteList.contains(index)){
                                        recommendedForYouController.removeFavorite(index);
                                      }else{
                                        recommendedForYouController.addFavorite(index);
                                      }
                                      recommendedForYouController.update();

                                    },
                                    likeImage:
                                    recommendedForYouController.favoriteList.contains(index)
                                            // recommendedPropertyListItemList[
                                            //     index]
                                            // .isFavourite
                                        ? ImageConstant.imgLikeGray900
                                        : ImageConstant.imgLike,
                                  );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
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
            title: AppbarSubtitle(text: "msg_recommended_for".tr)));
  }

  /// Navigates to the propertyDetailsScreen when the action is triggered.

  onTapEntryProperty() {
    Get.toNamed(
      AppRoutes.propertyDetailsOneScreen,
    );
  }

  onTapProperty() {
    Get.toNamed(
      AppRoutes.propertyDetailsScreen,
    );
  }
}
