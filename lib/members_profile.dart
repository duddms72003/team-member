import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thread_app_sample/personal_profile.dart';

class ThreadWritePage extends StatelessWidget {
  Widget memberCnt() {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1,
      padding: EdgeInsets.all(8.0),
      children: [
        _memberProfile(
          '조영은',
          'assets/images/jane.jpg',
          'INFP',
          28,
          '입력 해주세요!',
          '퍼블리셔, 리액트찍먹',
          '굿 팔로워',
        ),
        _memberProfile(
          '김재형',
          'assets/images/2.png',
          'INFJ',
          29,
          '웹 기획자로 일을 했습니다. 라라랜드, 보헤미안랩소디, 인터스텔라, 오펜하이머 등 음악, 과학 영화 좋아합니다.',
          '광고홍보전공, 멀티미디어공학(복수전공), 웹기획자, 앱기획(찍먹..)',
          '한 몸 불사질러 보겠습니다.',
        ),
        _memberProfile(
          '류정현',
          'assets/images/jane.jpg',
          'INTP',
          00,
          '입력 해주세요!',
          '빌리어네어, 고분자공학전공,dart 찍먹',
          '뼈를 묻겠습니다.',
        ),
        _memberProfile(
          '김민지',
          'assets/images/jane.jpg',
          'ISFP',
          00,
          '입력 해주세요!',
          '마케터, 네이버여행인플루언서, 내일모래반백살, 코린이 ',
          '화이팅!!!!',
        ),
      ],
    );
  }

  Widget _memberProfile(String memberName, String profileImg, String mbti,
      int age, String introduction, String tmi, String comment) {
    return GestureDetector(
      onTap: () {
        Get.to(() => MemberProfile(
              memberName: memberName,
              profileImg: profileImg,
              mbti: mbti,
              age: age,
              introduction: introduction,
              tmi: tmi,
              comment: comment, // comment 인자를 추가하여 전달
            ));
      },
      child: Container(
        margin: EdgeInsets.all(5),
        width: 100,
        height: 180, // 높이 값을 180으로 증가
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                profileImg,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              memberName,
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
              padding: EdgeInsets.all(20.0),
              color: Colors.grey[200],
              child: Text(
                '팀 소개: \n저희 팀은 내일배움캠프 앱창업 5기 2조이며,\nFlutter와 Dart로 창업을 위해 앱제작을 배웁니다.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: memberCnt(),
            ),
          ],
        ),
      ),
    );
  }
}
