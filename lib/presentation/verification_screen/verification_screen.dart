import 'package:pinput/pinput.dart';

import 'controller/verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/widgets/app_bar/appbar_leading_image.dart';
import 'package:home_management/widgets/app_bar/appbar_subtitle.dart';
import 'package:home_management/widgets/app_bar/custom_app_bar.dart';
import 'package:home_management/widgets/custom_elevated_button.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  VerificationController verificationController =
      Get.put(VerificationController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.white,
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(children: [
              _buildHeader(),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                  child: Column(children: [
                    Text("msg_you_re_just_moments".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyLargeSFProDisplay
                            .copyWith(height: 1.50.v)),
                    SizedBox(height: 24.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_code_sent_to".tr,
                              style: theme.textTheme.bodyLarge),
                          TextSpan(
                              text: "msg_ronaldrichards_gmail_com".tr,
                              style: CustomTextStyles.titleMediumBold)
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 16.v),
                    Center(
                      child: Directionality(
                          textDirection: TextDirection.ltr,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 3.h),
                            child: Pinput(
                              controller:
                                  verificationController.otpController.value,
                              obscureText: false,
                              length: 6,

                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              // obscuringCharacter: "0",
                              androidSmsAutofillMethod:
                                  AndroidSmsAutofillMethod.smsUserConsentApi,
                              listenForMultipleSmsOnAndroid: true,

                              defaultPinTheme: PinTheme(
                                width: 50.v,
                                height: 50.v,
                                textStyle: TextStyle(
                                  fontSize: 22.fSize,
                                  color: appTheme.black20,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.h),
                                  border: Border.all(
                                      color: const Color(0xFFC0C0C0)),
                                ),
                              ),
                              // separatorBuilder: (index) =>
                              //     SizedBox(width: 18.h),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Pin is incorrect';
                                }
                                return null;
                              },
                              // onClipboardFound: (value) {
                              //   debugPrint('onClipboardFound: $value');
                              //   pinController.setText(value);
                              // },
                              //hapticFeedbackType: HapticFeedbackType.lightImpact,
                              // onCompleted: (pin) {
                              //   debugPrint('onCompleted: $pin');
                              // },
                              // onChanged: (value) {
                              //   debugPrint('onChanged: $value');
                              // },
                              focusedPinTheme: PinTheme(
                                width: 50.h,
                                height: 50.v,
                                textStyle: TextStyle(
                                  fontSize: 22.fSize,
                                  color: appTheme.gray900,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.h),
                                  border: Border.all(
                                      color: ColorSchemes
                                          .primaryColorScheme.primary),
                                ),
                              ),
                              submittedPinTheme: PinTheme(
                                width: 50.h,
                                height: 50.v,
                                textStyle: TextStyle(
                                  fontSize: 22.fSize,
                                  color: appTheme.gray900,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.h),
                                  border: Border.all(
                                      color: const Color(0xFFC0C0C0)),
                                ),
                              ),
                              errorPinTheme: PinTheme(
                                width: 50.h,
                                height: 50.v,
                                textStyle: TextStyle(
                                  color: appTheme.gray900,
                                  fontSize: 16.fSize,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.h),
                                  border: Border.all(color: appTheme.errorText),
                                ),
                              ),
                            ),
                          )),
                    ),

                  
                    SizedBox(height: 30.v),
                    CustomElevatedButton(
                        text: "lbl_verify".tr,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            onTapVerify();
                          }
                        }),
                    SizedBox(height: 16.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "msg_don_t_receive_an2".tr,
                              style: theme.textTheme.bodyLarge),
                          TextSpan(
                              text: "lbl_resend_now".tr,
                              style: CustomTextStyles.titleMediumBold)
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 5.v)
                  ]))
            ]),
          ),
        ));
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
        padding: EdgeInsets.only(top: 16.v, bottom: 15.v),
        decoration: AppDecoration.outlineGray10001,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 5.v),
          CustomAppBar(
              leadingWidth: 44.h,
              leading: AppbarLeadingImage(
                  onTap: () {
                    Get.back();
                  },
                  imagePath: ImageConstant.imgIcArrowLeft,
                  margin: EdgeInsets.only(left: 20.h, top: 5.v, bottom: 2.v)),
              centerTitle: true,
              title: AppbarSubtitle(text: "lbl_verification".tr))
        ]));
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  onTapVerify() {
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }
}
