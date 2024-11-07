import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/core/utils/validation_functions.dart';
import 'package:home_management/widgets/custom_elevated_button.dart';
import 'package:home_management/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  SignUpController signUpController = Get.put(SignUpController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: appTheme.white,
        bottomNavigationBar: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: RichText(
              text: TextSpan(children: [
                TextSpan(
                    text: "lbl_already".tr,
                    style: theme.textTheme.bodyLarge),
                TextSpan(
                    text: "msg_have_an_account".tr,
                    style: theme.textTheme.bodyLarge),
                TextSpan(
                    text: "lbl_sign_in".tr,
                    style: CustomTextStyles.titleMediumBold)
              ]),
              textAlign: TextAlign.center),
        ).marginOnly(bottom: 40.h),
        body: SafeArea(
          child: Form(
              key: _formKey,
              child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(children: [
                    Expanded(
                        child: ListView(
                      primary: true,
                      shrinkWrap: false,
                      children: [
                        SizedBox(height: 40.v),

                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("lbl_sign_up2".tr,
                                style: theme.textTheme.headlineMedium)),
                        SizedBox(height: 8.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("msg_sign_up_for_our".tr,
                                style: theme.textTheme.bodyLarge)),
                        SizedBox(height: 16.v),
                        _buildMasterUsername(),
                        SizedBox(height: 16.v),
                        _buildMasterUsername1(),
                        SizedBox(height: 16.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("lbl_phone_number".tr,
                                style: theme.textTheme.bodyLarge)),
                        SizedBox(height: 7.v),
                        phoneNumberField(signUpController.phoneNumberController,
                                enableborder: true,
                                (p0) {
                              if (p0 == null || p0.isEmpty) {
                                return "Enter valid number";
                              }
                              return null;
                            },
                            ),

                        SizedBox(height: 16.v),
                        _buildMasterUsername2(),
                        SizedBox(height: 30.v),
                        _buildSignUpButton(),
                        SizedBox(height: 26.v),
                        SizedBox(
                            height: 24.v,
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 11.v),
                                      child: SizedBox(
                                          width: 314.h, child: Divider()))),
                              _buildOrContinueWithButton()
                            ])),
                        SizedBox(height: 26.v),
                        _buildSocial(),
                        SizedBox(height: 94.v),
                      ],
                    )),

                  ]))),
        ));
  }

  /// Section Widget
  Widget _buildFullName() {
    return CustomTextFormField(
        controller: signUpController.fullNameController,
        hintText: "Enter your full name",
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter full name".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildMasterUsername() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_full_name".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 8.v),
      _buildFullName()
    ]);
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
        controller: signUpController.emailController,
        hintText: "Enter your email address".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        });

  }

  /// Section Widget
  Widget _buildMasterUsername1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email_address".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 8.v),
      _buildEmail()
    ]);
  }



  /// Section Widget
  Widget _buildPassword() {
    return Obx(() => CustomTextFormField(
        controller: signUpController.passwordController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter a valid password";
          }
          return null;
        },
        textInputAction: TextInputAction.done,
        hintText: "Enter your password",
        suffix: GestureDetector(
            onTap: () {
              signUpController.isShowPassword.value =
                  !signUpController.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
                child: CustomImageView(
                    imagePath: signUpController.isShowPassword.value
                        ? ImageConstant.imgIcEye
                        : ImageConstant.imgEye,
                    height: 24.adaptSize,
                    width: 24.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 54.v),
        obscureText: signUpController.isShowPassword.value));
  }

  /// Section Widget
  Widget _buildMasterUsername2() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 8.v),
      _buildPassword()
    ]);
  }

  /// Section Widget
  Widget _buildSignUpButton() {
    return CustomElevatedButton(
        text: "lbl_sign_up2".tr,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            onTapSignUpButton();
          }
        });
  }

  /// Section Widget
  Widget _buildOrContinueWithButton() {
    return CustomElevatedButton(
        height: 24.v,
        width: 128.h,
        text: "msg_or_continue_with".tr,
        buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
        buttonTextStyle: CustomTextStyles.bodyLargeSFProDisplay,
        alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildGoogleButton() {
    return Expanded(
        child: CustomElevatedButton(
            height: 54.v,
            text: "lbl_google".tr,
            margin: EdgeInsets.only(right: 8.h),
            leftIcon: Container(
                margin: EdgeInsets.only(right: 12.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgIcGoogle,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            buttonStyle: CustomButtonStyles.fillGray,
            buttonTextStyle: CustomTextStyles.titleMediumSFProDisplay16,
            onPressed: () {
            }));
  }

  /// Section Widget
  Widget _buildFacebookButton() {
    return Expanded(
        child: CustomElevatedButton(
            height: 54.v,
            text: "lbl_facebook".tr,
            margin: EdgeInsets.only(left: 8.h),
            leftIcon: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 5.v),
                margin: EdgeInsets.only(right: 12.h),
                decoration: BoxDecoration(
                    color: appTheme.blueA200,
                    borderRadius: BorderRadius.circular(12.h)),
                child: CustomImageView(
                    imagePath: ImageConstant.imgVectorOnprimarycontainer,
                    height: 13.v,
                    width: 7.h)),
            buttonStyle: CustomButtonStyles.fillGray,
            buttonTextStyle: CustomTextStyles.titleMediumSFProDisplay16,
            onPressed: () {
            }));
  }

  /// Section Widget
  Widget _buildSocial() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildGoogleButton(), _buildFacebookButton()]));
  }

  /// Navigates to the basicDetailsScreen when the action is triggered.
  onTapSignUpButton() {
    Get.toNamed(
      AppRoutes.basicDetailsScreen,
    );
  }




}
