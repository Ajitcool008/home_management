import 'package:home_management/presentation/enter_location_screen/controller/enter_location_controller.dart';

import 'models/expore_model.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/widgets/custom_icon_button.dart';
import 'package:home_management/widgets/custom_search_view.dart';

class ExporePage extends StatefulWidget {
  const ExporePage({super.key});

  @override
  State<ExporePage> createState() => _ExporePageState();
}

class _ExporePageState extends State<ExporePage> {
  EnterLocationController enterLocationController =
  Get.put(EnterLocationController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return   Expanded(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage(
                    (enterLocationController.searchController.text.isEmpty || enterLocationController.isSubmit.value == false)
                        ? ImageConstant.imgRectangle4388
                        : ImageConstant.searchPage),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.h, vertical: 16.v),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomSearchView(
                          onChanged: (p0) {},
                          onSubmit: (p0) {
                            enterLocationController.isSubmit.value = true;
                            enterLocationController.update();
                          },
                          controller: enterLocationController.searchController,
                          hintText: "lbl_search2".tr,
                          suffix: SizedBox(),
                        ),
                        SizedBox(height: 16.v),
                        Row(
                          children: [
                            Container(
                              width: 66.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 7.v,
                              ),
                              decoration:
                              AppDecoration.fillPrimary.copyWith(
                                borderRadius:
                                BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Text(
                                "lbl_room".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            Container(
                              width: 103.h,
                              margin: EdgeInsets.only(left: 16.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 7.v,
                              ),
                              decoration: AppDecoration
                                  .outlineBlack900
                                  .copyWith(
                                borderRadius:
                                BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Text(
                                "lbl_roommate".tr,
                                style:
                                CustomTextStyles.bodyLargeGray800,
                              ),
                            ),
                            Container(
                              width: 65.h,
                              margin: EdgeInsets.only(left: 16.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 12.h,
                                vertical: 7.v,
                              ),
                              decoration: AppDecoration
                                  .outlineBlack900
                                  .copyWith(
                                borderRadius:
                                BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Text(
                                "lbl_event".tr,
                                style:
                                CustomTextStyles.bodyLargeGray800,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(right: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _buildCancleButton(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.v,
                ),
                Padding(
                  padding:  EdgeInsets.only(right: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [
                      _buildFloatingActionButton(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24.v,
                ),
                (enterLocationController.searchController.text.isEmpty ||
                    enterLocationController.isSubmit.value == false)
                    ? SizedBox(height: 0.v,)
                    : SizedBox(
                  height: 124.v,
                  child: ListView.builder(
                    padding:
                    EdgeInsets.symmetric(horizontal: 16.h),
                    scrollDirection: Axis.horizontal,
                    itemCount:
                    locationIdItemModelItemList.length,
                    itemBuilder: (context, index) => Container(
                      height: 124.v,
                      width: 350.h,
                      margin: EdgeInsets.only(right: 16.h),
                      padding: EdgeInsets.all(12.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0x0D000000),
                              offset: Offset(0, 4),
                              blurRadius: 12,
                              spreadRadius: 0)
                        ],
                        borderRadius:
                        BorderRadius.circular(12.h),
                      ),
                      child: Row(children: [
                        CustomImageView(
                            imagePath:
                            locationIdItemModelItemList[
                            index]
                                .image,
                            height: 100.adaptSize,
                            width: 100.adaptSize,
                            radius:
                            BorderRadius.circular(12.h)),
                        SizedBox(
                          width: 12.h,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 9.v, right: 9.h),
                                      child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment
                                              .start,
                                          children: [
                                            Text(
                                              locationIdItemModelItemList[
                                              index]
                                                  .name,
                                              style: theme
                                                  .textTheme
                                                  .titleMedium!
                                                  .copyWith(
                                                overflow:
                                                TextOverflow
                                                    .ellipsis,
                                              ),
                                            ),
                                            SizedBox(
                                                height: 9.v),
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: locationIdItemModelItemList[
                                                    index]
                                                        .price,
                                                    style: theme
                                                        .textTheme
                                                        .titleSmall,
                                                  ),
                                                  TextSpan(
                                                    text: locationIdItemModelItemList[
                                                    index]
                                                        .type,
                                                    style: CustomTextStyles
                                                        .bodySmallGray80012,
                                                  ),
                                                ],
                                              ),
                                              textAlign:
                                              TextAlign
                                                  .left,
                                            ),
                                          ]),
                                    ),
                                    CustomIconButton(
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        padding:
                                        EdgeInsets.all(4.h),
                                        decoration:
                                        IconButtonStyleHelper
                                            .outlineBlack,
                                        child: CustomImageView(
                                            imagePath:
                                            ImageConstant
                                                .imgLike))
                                  ]),
                              SizedBox(height: 12.v),
                              Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                          ImageConstant.bed,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.only(
                                              left: 5.h),
                                          child: Text(
                                              locationIdItemModelItemList[
                                              index]
                                                  .bed!,
                                              style: theme
                                                  .textTheme
                                                  .bodySmall),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20.h,
                                    ),
                                    Row(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                          ImageConstant
                                              .bathtub,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                        ),
                                        Padding(
                                            padding:
                                            EdgeInsets.only(
                                                left: 5.h),
                                            child: Text(
                                                locationIdItemModelItemList[
                                                index]
                                                    .bathtub!,
                                                style: theme
                                                    .textTheme
                                                    .bodySmall)),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20.h,
                                    ),
                                    Row(
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgIcSquarefeetGray900,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                        ),
                                        Padding(
                                            padding:
                                            EdgeInsets.only(
                                                left: 5.h),
                                            child: Text(
                                                locationIdItemModelItemList[
                                                index]
                                                    .sqft,
                                                style: theme
                                                    .textTheme
                                                    .bodySmall)),
                                      ],
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.v,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  /// Section Widget

  Widget _buildCancleButton() {
    return Container(
      padding: EdgeInsets.all(12.h),

      decoration: BoxDecoration(
          color: appTheme.white,
          shape: BoxShape.circle,
          boxShadow: [BoxShadow(
            color: Color(0x14000000),
            blurRadius: 29,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )]),
      child: CustomImageView(
        imagePath: ImageConstant.cancle,
        height: 24.adaptSize,
        width: 24.adaptSize,
        fit: BoxFit.cover,

      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Container(

        padding: EdgeInsets.all(12.h),

    decoration: BoxDecoration(
        color: appTheme.white,
    shape: BoxShape.circle,
    boxShadow: [BoxShadow(
      color: Color(0x14000000),
      blurRadius: 29,
      offset: Offset(0, 0),
      spreadRadius: 0,
    )]),

      child: CustomImageView(
        imagePath: ImageConstant.floating,
        height: 24.adaptSize,
        width: 24.adaptSize,
        fit: BoxFit.cover,
      ),
    );
  }
}
