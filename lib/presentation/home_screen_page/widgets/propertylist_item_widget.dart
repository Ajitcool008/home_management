import 'package:flutter/material.dart';
import 'package:home_management/core/utils/image_constant.dart';
import 'package:home_management/core/utils/size_utils.dart';
import 'package:home_management/theme/custom_text_style.dart';
import 'package:home_management/theme/theme_helper.dart';
import 'package:home_management/widgets/custom_icon_button.dart';
import 'package:home_management/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class RecommendedFormat extends StatelessWidget {
  VoidCallback? onTap;
  VoidCallback? likeOnTap;

  String image;
  String? likeImage ;

  String name;

  String address;

  String price;
  String type;

  String? bed;

  String? bathtub;

  int? id;

  RecommendedFormat({
    super.key,
    this.onTap,
    this.likeOnTap,
    this.likeImage,

    required this.image,
    required this.name,
    required this.address,
    required this.price,
    required this.type,
    this.bed,
    this.bathtub,
    this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.fromLTRB(8.h, 8.v, 8.h, 12.v),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.h),
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    height: double.infinity,
                    // height: 116.v,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(12.h))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.v,
                      right: 8.h,
                    ),
                    child: GestureDetector(
                      onTap: likeOnTap,
                      child: CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                           decoration: IconButtonStyleHelper.outlineBlack,

                           padding: EdgeInsets.all(4.h),
                          alignment: Alignment.topRight,
                          child: CustomImageView(
                            imagePath: likeImage,
                          ),
                        ),

                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIcLocationGray800,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Text(
                          address,
                          style: CustomTextStyles.bodySmallGray800,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: price,
                              style: theme.textTheme.titleSmall,
                            ),
                            TextSpan(
                              text: type,
                              style: CustomTextStyles.bodySmallGray80012,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.bed,
                            height: 14.adaptSize,
                            width: 14.adaptSize,
                          ),
                          SizedBox(
                            width: 4.h,
                          ),
                          Text(bed!, style: theme.textTheme.bodySmall!),
                          CustomImageView(
                            imagePath: ImageConstant.bathtub,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.only(left: 8.h),
                          ),
                          SizedBox(
                            width: 4.h,
                          ),
                          Text(bathtub!, style: theme.textTheme.bodySmall)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
