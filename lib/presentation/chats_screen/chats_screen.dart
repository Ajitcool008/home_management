import 'package:home_management/presentation/chats1_page/models/chatslist_item_model.dart';
import 'package:home_management/presentation/chats1_page/widgets/chatslist_item_widget.dart';
import 'package:home_management/presentation/home_screen_container_screen/controller/home_screen_container_controller.dart';

import 'controller/chats_controller.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';
import 'package:home_management/widgets/custom_elevated_button.dart';

class ChatsScreen extends StatefulWidget {


   ChatsScreen({super.key, });

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  ChatsController chatsController = Get.put(ChatsController());
  HomeScreenContainerController homeScreenContainerController = Get.put(HomeScreenContainerController());



  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Container(
        color: appTheme.gray100,
        width: double.maxFinite,
        child: Column(
          children: [
            _buildHeader(),
            chatsListItemList.isEmpty?
            Expanded(
                child: Container(
                  width: double.infinity,
                  color: appTheme.gray100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Container(

                    height: 120.v,
                    width: 120.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 28.h,
                      vertical: 29.v,
                    ),
                    decoration: AppDecoration.fillBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder60,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorPrimarycontainer60x64,
                      height: 60.adaptSize,
                      width: 64.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "lbl_no_chats_yet".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 16.v),
                  Text(
                    "msg_you_have_successfully3".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      height: 1.50.v,
                    ),
                  ),
                  SizedBox(height: 40.v),
                  CustomElevatedButton(
                    height: 53.v,
                    width: 250.h,
                    text: "lbl_go_to_home".tr,
                    onPressed: () {
                      homeScreenContainerController.selectIndex.value = 0;
                    },
                  ),
              ],
            ),
                )):
            _buildChatsList(),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 18.v, bottom: 19.v),
      decoration: AppDecoration.outlineGray10001,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "lbl_chats2".tr,
            style: theme.textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
  /// Section Widget
  Widget _buildChatsList() {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
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
        itemCount: chatsListItemList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.chatDetailsScreen);
            },
            child: ChatslistItemWidget(
              robertfox: chatsListItemList[index].robertfox,
              robertFox: chatsListItemList[index].robertFox,
              awesome: chatsListItemList[index].awesome,
              time: chatsListItemList[index].time,
            ),
          );
        },
      ),

    );
  }

}
