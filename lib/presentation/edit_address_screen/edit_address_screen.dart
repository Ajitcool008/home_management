import 'controller/edit_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/widgets/app_bar/appbar_leading_image.dart';
import 'package:home_management/widgets/app_bar/appbar_subtitle.dart';
import 'package:home_management/widgets/app_bar/custom_app_bar.dart';
import 'package:home_management/widgets/custom_elevated_button.dart';
import 'package:home_management/widgets/custom_text_form_field.dart';

class EditAddressScreen extends StatefulWidget {
  const EditAddressScreen({super.key});

  @override
  State<EditAddressScreen> createState() => _EditAddressScreenState();
}

class _EditAddressScreenState extends State<EditAddressScreen> {
  EditAddressController editAddressController =
      Get.put(EditAddressController());

  String selectCity = "select city";
  List<String> city = ["Broome", "surat","rajkot","ahmedabad","vadodara"];
  String selectState = "select state";
  List<String> state = ["New york", "Gujarat","Delhi","Maharashtra","Rajasthan","Karnataka"];
  String selectCountry = "select country";
  List<String> country = ["USA", "India","UK","Australia","Canada","China","Japan"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: appTheme.white,
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: _buildBtnAndBg(),
      body: SafeArea(
        child: Container(
            color: appTheme.gray100,
            width: double.maxFinite,
            child: Column(children: [
              _buildHeader(),
              Expanded(
                  child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                primary: true,
                shrinkWrap: false,
                children: [
                  Column(children: [
                    _buildMasterUsername(),
                    SizedBox(height: 16.v),
                    _buildMasterUsername1(),
                    SizedBox(height: 16.v),
                    _buildMasterDropdown(),
                    SizedBox(height: 16.v),
                    _buildMasterDropdown1(),
                    SizedBox(height: 16.v),
                    _buildMasterDropdown2(),
                    SizedBox(height: 16.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("lbl_phone_number".tr,
                            style: theme.textTheme.bodyLarge)),
                    SizedBox(height: 5.v),
                    phoneNumberField(editAddressController.phoneNumberController,
                            (p0) {
                          if (p0 == null || p0.isEmpty) {
                            return "Enter valid number";
                          }
                          return null;
                        }),
                    SizedBox(height: 5.v)
                  ]),
                ],
              )),

            ])),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
        padding: EdgeInsets.only(top: 18.v, bottom: 19.v),
        decoration: AppDecoration.outlineGray10001,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              CustomAppBar(
                  leadingWidth: 44.h,
                  leading: AppbarLeadingImage(
                      onTap: () {
                        Get.back();
                      },
                      imagePath: ImageConstant.imgIcArrowLeft,
                      margin:
                          EdgeInsets.only(left: 20.h, top: 5.v, bottom: 2.v)),
                  centerTitle: true,
                  title: AppbarSubtitle(text: "lbl_edit_address".tr))
            ]));
  }

  /// Section Widget
  Widget _buildMasterUsernameAddresslineOne() {
    return CustomTextFormField(
        controller:
            editAddressController.masterUsernameAddresslineOneController,
        hintText: "Enter address",
      enableBorder: false,

    );
  }

  /// Section Widget
  Widget _buildMasterUsername() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_address_line_1".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 5.v),
      _buildMasterUsernameAddresslineOne()
    ]);
  }

  /// Section Widget
  Widget _buildMasterUsernameAddresslineTwo() {
    return CustomTextFormField(
        controller:
            editAddressController.masterUsernameAddresslineTwoController,
        hintText: "Enter address",
      enableBorder: false,

    );
  }

  /// Section Widget
  Widget _buildMasterUsername1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_address_line_2".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 5.v),
      _buildMasterUsernameAddresslineTwo()
    ]);
  }

  /// Section Widget
  Widget _buildCity() {
    return Container(
      height: 54.v,
      padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 11.v),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.h)),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(12.h),
        dropdownColor: Colors.white,
        elevation: 0,
        underline: SizedBox(),
        style: theme.textTheme.bodyLarge,
        icon: CustomImageView(
            imagePath: ImageConstant.imgRightIcon,
            height: 20.adaptSize,
            width: 20.adaptSize),
        hint: Text(
          "$selectCity",
          style: theme.textTheme.bodyLarge,
          textAlign: TextAlign.left,
        ),
        isExpanded: true,
        items: city
            .map((e) => DropdownMenuItem(
          child: Text(e),
          value: e,
        ))
            .toList(),
        onChanged: (value) {
          selectCity = value as String;
          setState(() {});
        },
      ),
    );
  }


  /// Section Widget
  Widget _buildMasterDropdown() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_city".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 5.v),
      _buildCity()
    ]);
  }

  /// Section Widget
  Widget _buildInputBox() {
    return Container(
      height: 54.v,
      padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 11.v),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.h)),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(12.h),
        dropdownColor: Colors.white,
        elevation: 0,
        underline: SizedBox(),
        style: theme.textTheme.bodyLarge,
        icon: CustomImageView(
            imagePath: ImageConstant.imgRightIcon,
            height: 20.adaptSize,
            width: 20.adaptSize),
        hint: Text(
          "$selectState",
          style: theme.textTheme.bodyLarge,
          textAlign: TextAlign.left,
        ),
        isExpanded: true,
        items: state
            .map((e) => DropdownMenuItem(
          child: Text(e),
          value: e,
        ))
            .toList(),
        onChanged: (value) {
          selectState = value as String;
          setState(() {});
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMasterDropdown1() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_state".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 5.v),
      _buildInputBox()
    ]);
  }

  /// Section Widget
  Widget _buildCountry() {
    return Container(
      height: 54.v,
      padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 11.v),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.h)),
      child: DropdownButton(
        borderRadius: BorderRadius.circular(12.h),
        dropdownColor: Colors.white,
        elevation: 0,
        underline: SizedBox(),
        style: theme.textTheme.bodyLarge,
        icon: CustomImageView(
            imagePath: ImageConstant.imgRightIcon,
            height: 20.adaptSize,
            width: 20.adaptSize),
        hint: Text(
          "$selectCountry",
          style:theme.textTheme.bodyLarge,
          textAlign: TextAlign.left,
        ),
        isExpanded: true,
        items: country
            .map((e) => DropdownMenuItem(
          child: Text(e),
          value: e,
        ))
            .toList(),
        onChanged: (value) {
          selectCountry = value as String;
          setState(() {});
        },
      ),
    );
  }


  /// Section Widget
  Widget _buildMasterDropdown2() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_country".tr, style: theme.textTheme.bodyLarge),
      SizedBox(height: 5.v),
      _buildCountry()
    ]);
  }



  /// Section Widget
  Widget _buildSave() {
    return CustomElevatedButton(
        text: "lbl_save".tr,
        onPressed: () {
          onTapSave();
        });
  }

  /// Section Widget
  Widget _buildBtnAndBg() {
    return Container(
        // height: 112.h,
        padding: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 40.v),
        decoration: AppDecoration.white,
        child: _buildSave());
  }

  /// Navigates to the myAddressScreen when the action is triggered.
  onTapSave() {
    Get.back();
  }
}
