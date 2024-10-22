import 'package:flutter/material.dart';

// Widget _profileBox(String title, Color color) {
//   return Expanded(
//     child: Container(
//       margin: EdgeInsets.all(8.0), // 박스 간의 간격
//       padding: EdgeInsets.all(16.0), // 박스 내부 여백
//       decoration: BoxDecoration(
//         color: color, // 박스 색상
//         borderRadius: BorderRadius.circular(8.0), // 모서리 둥글게
//       ),
//       child: Center(
//         child: Text(
//           title,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 18,
//           ),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     ),
//   );
// }

class MemberProfile1 extends StatelessWidget {
  final String memberName;
  final String profileImg;

  const MemberProfile1(
      {Key? key, required this.memberName, required this.profileImg})
      : super(key: key);

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
