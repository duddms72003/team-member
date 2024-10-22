import 'package:flutter/material.dart';

class MemberProfile1 extends StatelessWidget {
  final String memberName;
  final String profileImg;

  const MemberProfile1(
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
      appBar: AppBar(
        title: Text('$memberName의 프로필'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              '안녕하세요, $memberName 입니다.',
              style: TextStyle(
                  color: const Color.fromARGB(255, 11, 15, 18), fontSize: 24),
            ),
            _profileBox('자기소개', '자기소개 칸 입니다. 작성해주세요.'),
            _profileBox('TMI', 'TMI 칸 입니다. 작성해주세요.'),
            _profileBox('한마디', '한마디 칸 입니다. 작성해주세요.'),
          ],
        ),
      ),
    );
  }
}

class MemberProfile2 extends StatelessWidget {
  final String memberName;
  const MemberProfile2({Key? key, required this.memberName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$memberName의 프로필'),
      ),
      body: Container(
        child: Text(
          '안녕하세요, $memberName 입니다.',
          style: TextStyle(
              color: const Color.fromARGB(255, 11, 15, 18), fontSize: 24),
        ),
      ),
    );
  }
}

class MemberProfile3 extends StatelessWidget {
  final String memberName;
  const MemberProfile3({Key? key, required this.memberName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$memberName의 프로필'),
      ),
      body: Center(
        child: Text(
          '안녕하세요, $memberName 입니다.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class MemberProfile4 extends StatelessWidget {
  final String memberName;
  const MemberProfile4({Key? key, required this.memberName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$memberName의 프로필'),
      ),
      body: Center(
        child: Text(
          '안녕하세요, $memberName 입니다.',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
