import '../chats1_page/widgets/chatslist_item_widget.dart';
import 'controller/chats1_controller.dart';
import 'models/chats1_model.dart';
import 'models/chatslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:home_management/core/app_export.dart';

class Chats1Page extends StatefulWidget {
  const Chats1Page({super.key});

  @override
  State<Chats1Page> createState() => _Chats1PageState();
}

class _Chats1PageState extends State<Chats1Page> {
  Chats1Controller controller = Get.put(Chats1Controller(Chats1Model().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              _buildHeader(),
              _buildChatsList(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader() {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
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
            return ChatslistItemWidget(
              robertfox: chatsListItemList[index].robertfox,
              robertFox: chatsListItemList[index].robertFox,
              awesome: chatsListItemList[index].awesome,
              time: chatsListItemList[index].time,
            );
          },
        ),

    );
  }
}
