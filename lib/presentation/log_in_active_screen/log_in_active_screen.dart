import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/core/utils/validation_functions.dart';
import 'package:home_management/utils/helpers/utility_helpers.dart';
import 'package:home_management/widgets/custom_elevated_button.dart';
import 'package:home_management/widgets/custom_text_form_field.dart';

import 'controller/log_in_active_controller.dart';

class LogInActiveScreen extends StatefulWidget {
  const LogInActiveScreen({super.key});

  @override
  State<LogInActiveScreen> createState() => _LogInActiveScreenState();
}

class _LogInActiveScreenState extends State<LogInActiveScreen> {
  LogInActiveController logInActiveController =
      Get.put(LogInActiveController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    // setSafeAreaColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: appTheme.white,
          bottomNavigationBar: GestureDetector(
            onTap: () {
              onTapSignUpButton();
            },
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "msg_don_t_have_an_account2".tr,
                      style: theme.textTheme.bodyLarge),
                  TextSpan(
                      text: "lbl_sign_up".tr,
                      style: CustomTextStyles.titleMediumBold)
                ]),
                textAlign: TextAlign.center),
          ).marginOnly(bottom: 40.v),
          body: SafeArea(
            child: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      Expanded(
                        child: ListView(
                          primary: true,
                          shrinkWrap: false,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("lbl_log_in".tr,
                                    style: theme.textTheme.headlineMedium)),
                            SizedBox(height: 8.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Text("msg_your_account_is".tr,
                                    style: theme.textTheme.bodyLarge)),
                            SizedBox(height: 16.v),
                            _buildMasterUsername(),
                            SizedBox(height: 16.v),
                            _buildMasterUsername1(),
                            SizedBox(height: 16.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapTxtForgotPassword();
                                    },
                                    child: Text("msg_forgot_password".tr,
                                        style: theme.textTheme.bodyLarge!
                                            .copyWith(
                                                color: appTheme.gray900)))),
                            SizedBox(height: 30.v),
                            _buildLoginButton(),
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
                              ]),
                            ),
                            SizedBox(height: 26.v),
                            _buildSocial(),
                            SizedBox(height: 26.v),
                            _buildInvestorButton(),
                          ],
                        ),
                      ),
                    ]))),
          )),
    );
  }

  Widget _buildEmailField() {
    return CustomTextFormField(
        controller: logInActiveController.emailFieldController,
        hintText: "Enter your email address",
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "Please enter a valid email address";
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildMasterUsername() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email_address".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 8.v),
      _buildEmailField()
    ]);
  }

  /// Section Widget
  Widget _buildPasswordField() {
    return Obx(() => CustomTextFormField(
          controller: logInActiveController.passwordFieldController,
          hintText: "Enter your password",
          textInputAction: TextInputAction.done,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter a valid password";
            }
            return null;
          },
          suffix: GestureDetector(
            onTap: () {
              logInActiveController.isShowPassword.value =
                  !logInActiveController.isShowPassword.value;
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(30.h, 15.v, 16.h, 15.v),
              child: CustomImageView(
                  imagePath: logInActiveController.isShowPassword.value
                      ? ImageConstant.imgIcEye
                      : ImageConstant.imgEye,
                  height: 24.adaptSize,
                  width: 24.adaptSize),
            ),
          ),
          suffixConstraints: BoxConstraints(maxHeight: 54.v),
          obscureText: logInActiveController.isShowPassword.value,
        ));
  }

  /// Section Widget
  Widget _buildMasterUsername1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 8.v),
      _buildPasswordField()
    ]);
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return CustomElevatedButton(
        text: "lbl_log_in".tr,
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            SharedPreferencesClass setHome = SharedPreferencesClass();
            setHome.setData(true, true);
            onTapLoginButton();
          }
        });
  }

  /// Section Widget
  Widget _buildInvestorButton() {
    return CustomElevatedButton(
        text: "lbl_investor".tr,
        onPressed: () {
          UtilityHelper().openLaunchUrl(url: "https://tribe.tribify.eu/");
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
              SharedPreferencesClass setHome = SharedPreferencesClass();
              setHome.setData(true, true);
              onTapGoogleButton();
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
              SharedPreferencesClass setHome = SharedPreferencesClass();
              setHome.setData(true, true);
              onTapFacebookButton();
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

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapLoginButton() {
    Get.toNamed(
      AppRoutes.homeScreenContainerScreen,
    );
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapGoogleButton() {
    Get.toNamed(
      AppRoutes.homeScreenContainerScreen,
    );
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapFacebookButton() {
    Get.toNamed(
      AppRoutes.homeScreenContainerScreen,
    );
  }

  onTapSignUpButton() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
