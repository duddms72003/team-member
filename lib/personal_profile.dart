import 'package:flutter/material.dart';

class MemberProfile extends StatelessWidget {
  final String memberName;
  final String profileImg;

  const MemberProfile(
      {Key? key, required this.memberName, required this.profileImg})
      : super(key: key);

  Widget _profileBox(String title, String content) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          SizedBox(height: 10), // 간격 추가
          Container(
            width: 500,
            height: 120,
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.white, // 흰색 배경
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              content,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 상단 프로필 영역
            Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.grey[200], // 배경색으로 영역 구분
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(profileImg), // 전달받은 이미지 경로
                  ),
                  SizedBox(height: 10),
                  Text(
                    '안녕하세요, $memberName 입니다.',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 11, 15, 18),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'MBTI: INFP',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Age: 28',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email, color: Colors.black54),
                      SizedBox(width: 5),
                      Text(
                        'Email: example@email.com',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // 하단 프로필 박스 영역
            _profileBox('자기소개', '자기소개 칸 입니다. 작성해주세요.'),
            _profileBox('TMI', 'TMI 칸 입니다. 작성해주세요.'),
            _profileBox('한마디', '한마디 칸 입니다. 작성해주세요.'),
          ],
        ),
      ),
    );
  }
}
