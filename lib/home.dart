import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thread_app_sample/feed_model.dart';
import 'package:thread_app_sample/home_feed_list_controller.dart';
import 'package:thread_app_sample/image_view_widget.dart';
import 'package:thread_app_sample/members_profile.dart';
import 'package:timeago/timeago.dart' as timeago;

class Home extends StatelessWidget {
  const Home({super.key});

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 50,
        ),
        Image.asset(
          'assets/images/thread_logo.png',
          width: 50,
        ),
        Image.asset(
          'assets/images/more_icon.png',
          width: 50,
        ),
      ],
    );
  }

  void _showCupertinoActionSheet(String feedId) {
    showCupertinoModalPopup(
      context: Get.context!,
      builder: (BuildContext context) => CupertinoActionSheet(
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              print('Edit Pressed');
            },
            child: Text('수정'),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              Get.find<HomeFeedListcontroller>().removeFeed(feedId);
            },
            isDestructiveAction: true,
            child: Text('삭제'),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('취소'),
        ),
      ),
    );
  }

  Widget _btnIntroduce() {
    return SizedBox(
      child: ElevatedButton(
        onPressed: () {
          Get.to(() => ThreadWritePage());
        },
        child: Text('소개 보기'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget _ImgContainer() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Image.asset(
          'assets/images/2.png',
          width: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            _header(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            Divider(),
            _ImgContainer(),
            _btnIntroduce(),
          ],
        ),
      ),
    );
  }
}
