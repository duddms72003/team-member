import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thread_app_sample/feed_model.dart';
import 'package:thread_app_sample/home_feed_list_controller.dart';
import 'package:thread_app_sample/image_view_widget.dart';
import 'package:thread_app_sample/thread_write_page.dart';
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

  // Widget _singleFeed(FeedModel model) {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       _leftProfileArea(),
  //       Expanded(
  //         child: _contentArea(model),
  //       ),
  //     ],
  //   );
  // }

  // Widget _leftProfileArea() {
  //   return Column(
  //     children: [
  //       SizedBox(
  //         width: 60,
  //         height: 60,
  //         child: Stack(
  //           children: [
  //             Align(
  //               alignment: Alignment.centerLeft,
  //               child: ClipRRect(
  //                 borderRadius: BorderRadius.circular(50),
  //                 child: Image.network(
  //                   'https://yt3.googleusercontent.com/XmYJ7m6JFlhA5BNLnQdnlew7g1E6YGSE4p8hl8ow_pOI6-cZkGdjo38oJhBG7NPrj9eawodgqA=s900-c-k-c0x00ffffff-no-rj',
  //                   width: 50,
  //                 ),
  //               ),
  //             ),
  //             Positioned(
  //                 right: 5,
  //                 bottom: 2,
  //                 child: SizedBox(
  //                   width: 20,
  //                   height: 20,
  //                   child: ClipRRect(
  //                     borderRadius: BorderRadius.circular(20),
  //                     child: Container(
  //                       decoration: BoxDecoration(color: Colors.black),
  //                       child: Icon(
  //                         Icons.add,
  //                         color: Colors.white,
  //                         size: 17,
  //                       ),
  //                     ),
  //                   ),
  //                 ))
  //           ],
  //         ),
  //       ),
  //     ],
  //   );
  // }

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

  // Widget _contentArea(FeedModel model) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.stretch,
  //     children: [
  //       SizedBox(
  //         height: 30,
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Row(
  //               children: [
  //                 Text(
  //                   '개발하는남자',
  //                   style: TextStyle(
  //                     color: Colors.black,
  //                     fontSize: 14,
  //                     fontWeight: FontWeight.bold,
  //                   ),
  //                 ),
  //                 SizedBox(width: 7),
  //                 Text(
  //                   timeago.format(
  //                       DateTime.now().subtract(
  //                           DateTime.now().difference(model.createdAt)),
  //                       locale: 'ko'),
  //                   style: TextStyle(
  //                     color: Color(0xff999999),
  //                     fontSize: 14,
  //                   ),
  //                 )
  //               ],
  //             ),
  //             GestureDetector(
  //               onTap: () {
  //                 _showCupertinoActionSheet(model.id);
  //               },
  //               child: Icon(
  //                 Icons.more_horiz,
  //                 color: Color(0xff999999),
  //               ),
  //             )
  //           ],
  //         ),
  //       ),
  //       Text(
  //         model.contents,
  //         style: TextStyle(color: Colors.black),
  //       ),
  //       SizedBox(height: 10),
  //       if (model.images.isNotEmpty) ImageViewWidget(images: model.images),
  //       SizedBox(height: 10),
  //       Row(
  //         children: [
  //           GestureDetector(
  //             onTap: () {},
  //             child: SizedBox(
  //               width: 55,
  //               child: Row(
  //                 children: [
  //                   Image.asset(
  //                     'assets/images/icon_like.png',
  //                     width: 30,
  //                   ),
  //                   Text('24'),
  //                 ],
  //               ),
  //             ),
  //           ),
  //           GestureDetector(
  //             onTap: () {},
  //             child: SizedBox(
  //               width: 55,
  //               child: Row(
  //                 children: [
  //                   Image.asset(
  //                     'assets/images/icon_message.png',
  //                     width: 30,
  //                   ),
  //                   Text('14'),
  //                 ],
  //               ),
  //             ),
  //           ),
  //           GestureDetector(
  //             onTap: () {},
  //             child: SizedBox(
  //               width: 55,
  //               child: Row(
  //                 children: [
  //                   Image.asset(
  //                     'assets/images/icon_share.png',
  //                     width: 30,
  //                   ),
  //                   Text('7'),
  //                 ],
  //               ),
  //             ),
  //           ),
  //           GestureDetector(
  //             onTap: () {},
  //             child: Image.asset(
  //               'assets/images/icon_send.png',
  //               width: 30,
  //             ),
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }

  Widget _btnIntroduce() {
    return SizedBox(
      child: ElevatedButton(
        onPressed: () {
          // 비동기 처리를 없애고 단순하게 페이지 이동
          Get.to(() => ThreadWritePage());
        },
        child: Text('소개 보기'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // 버튼 배경색
          foregroundColor: Colors.white, // 텍스트 색상
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // 버튼 모서리 둥글게
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
