import '../controller/my_property_controller.dart';
import '../models/bedroomlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class BedroomlistItemWidget extends StatelessWidget {
  BedroomlistItemWidget(
    this.bedroomlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BedroomlistItemModel bedroomlistItemModelObj;

  var controller = Get.find<MyPropertyController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRoutes.propertyDetailsScreen);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12.v,horizontal: 12.h),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

           CustomImageView(
                imagePath: bedroomlistItemModelObj.shermanoaks,
                height: 100.adaptSize,
                width: 100.adaptSize,
                radius: BorderRadius.circular(
                  12.h,
                ),
              ),

            SizedBox(width: 12.h,),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                                bedroomlistItemModelObj.shermanOaks,
                                style: theme.textTheme.titleMedium,
                              ),

                            SizedBox(height: 8.v),
                            Text(
                                bedroomlistItemModelObj.price,
                                style: theme.textTheme.bodyMedium,
                              ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 35.v),
                        child: CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(4.h),
                          decoration: IconButtonStyleHelper.outlineBlackTL121,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgLike,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     CustomImageView(
                          imagePath: ImageConstant.bed,
                          height: 20.adaptSize,
                          width: 20.adaptSize,

                        ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.h,
                          top: 4.v,
                          bottom: 3.v,
                        ),
                        child: Text(
                          bedroomlistItemModelObj.bedroom,
                          style: theme.textTheme.bodySmall,
                        ),

                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.bathtub,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(left: 13.h),
                          ),

                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.h,
                          top: 4.v,
                          bottom: 3.v,
                        ),
                        child: Text(
                          bedroomlistItemModelObj.bathroom,
                          style: theme.textTheme.bodySmall,
                        ),

                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgIcSquarefeetGray900,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(left: 12.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.h,
                          top: 4.v,
                          bottom: 3.v,
                        ),
                        child: Text(
                            bedroomlistItemModelObj.sqftCounter,
                            style: theme.textTheme.bodySmall,
                          ),

                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
