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
      home: Scaffold(
        appBar: AppBar(),
        body: ShopItem(),
      )
    );
  }
}

// stless
class ShopItem extends StatelessWidget {
  const ShopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('안뇽'),
    );
  }
}

