import 'package:flutter/material.dart';

void main() {
  // app 구동시켜주세요~
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    // MaterialApp() -> 구글에서 제공하는 위젯을 사용 가능, 커스터마이징 할때도 사용
    // Cupertino어쩌구()-> 아이폰 ui 위젯을 사용 가능
    return MaterialApp(
      // 글자위젯 : Text(),
      // 아이콘위젯 : Icon(Icons.star),
      // 이미지위젯 : Image.asset('200.png'),
      // 박스위젯 : Container( width: 50, height: 50, color: Colors.orange )
      // Center() -> 내 자식 위젯의 기준점을 중앙으로
      home: Scaffold(
       // Scaffold -> 상중하로 나누어주는 위젯
        body: Column(
          // body 안에 Row(가로정렬), Column(세로정렬)
          // MainAxisAlignment.spaceEvenly -> display:flex
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star)
          ],
        ),
      )
    );
  }
}
