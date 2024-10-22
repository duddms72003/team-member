import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thread_app_sample/member_profile.dart';

class ThreadWritePage extends StatelessWidget {
  Widget memberCnt() {
    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1,
        padding: EdgeInsets.all(8.0),
        children: [
          _memberProfile1('조영은', 'assets/images/jane.jpg'),
          _memberProfile2('김재형', 'assets/images/2.png'),
          _memberProfile3('류정현', 'assets/images/jane.jpg'),
          _memberProfile4('김민지', 'assets/images/jane.jpg'),
        ]);
  }

  Widget _memberProfile1(
    String memberName,
    String profileImg,
  ) {
    return GestureDetector(
      onTap: () {
        Get.to(() =>
            MemberProfile1(memberName: memberName, profileImg: profileImg));
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        child: Column(
          // 이미지와 텍스트를 위아래로 배치
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                profileImg, // 이미지 경로로 이미지 표시
                width: 120, // 원하는 크기로 설정
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20), // 이미지와 텍스트 사이에 간격 추가
            Text(
              memberName, // 멤버 이름 표시
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _memberProfile2(
    String memberName,
    String profileImg,
  ) {
    return GestureDetector(
      onTap: () {
        Get.to(() =>
            MemberProfile1(memberName: memberName, profileImg: profileImg));
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        child: Column(
          // 이미지와 텍스트를 위아래로 배치
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                profileImg, // 이미지 경로로 이미지 표시
                width: 120, // 원하는 크기로 설정
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20), // 이미지와 텍스트 사이에 간격 추가
            Text(
              memberName, // 멤버 이름 표시
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _memberProfile3(
    String memberName,
    String profileImg,
  ) {
    return GestureDetector(
      onTap: () {
        Get.to(() =>
            MemberProfile1(memberName: memberName, profileImg: profileImg));
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        child: Column(
          // 이미지와 텍스트를 위아래로 배치
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                profileImg, // 이미지 경로로 이미지 표시
                width: 120, // 원하는 크기로 설정
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20), // 이미지와 텍스트 사이에 간격 추가
            Text(
              memberName, // 멤버 이름 표시
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  Widget _memberProfile4(
    String memberName,
    String profileImg,
  ) {
    return GestureDetector(
      onTap: () {
        Get.to(() =>
            MemberProfile1(memberName: memberName, profileImg: profileImg));
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
        child: Column(
          // 이미지와 텍스트를 위아래로 배치
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                profileImg, // 이미지 경로로 이미지 표시
                width: 120, // 원하는 크기로 설정
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20), // 이미지와 텍스트 사이에 간격 추가
            Text(
              memberName, // 멤버 이름 표시
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: memberCnt(),
      ),
    );
  }
}