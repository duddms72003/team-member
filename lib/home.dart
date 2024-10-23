import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thread_app_sample/members_profile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget _btnIntroduce() {
    return Container(
      width: 150, // 버튼의 너비를 줄임
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
            ),
            _ImgContainer(),
            SizedBox(height: 60),
            _btnIntroduce(),
          ],
        ),
      ),
    );
  }
}
