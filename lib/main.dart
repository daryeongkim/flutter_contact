import 'package:flutter/material.dart';

void main() {
  // app 구동시켜주세요~
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // 글자위젯 : Text(),
      // 아이콘위젯 : Icon(Icons.star),
      // 이미지위젯 : Image.asset('200.png'),
      // 박스위젯 : Container( width: 50, height: 50, color: Colors.orange )
      // Center() -> 내 자식 위젯의 기준점을 중앙으로
      home: Center(
        child: Container( width: 50, height: 50, color: Colors.orange ),
      ),
    );
  }
}
