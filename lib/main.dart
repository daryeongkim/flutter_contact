import 'package:flutter/material.dart';

void main() {
  // app 구동시켜주세요~
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  var a = 1;

  @override
  Widget build(BuildContext context) {

    // MaterialApp() -> 구글에서 제공하는 위젯을 사용 가능, 커스터마이징 할때도 사용
    // Cupertino어쩌구()-> 아이폰 ui 위젯을 사용 가능
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Text(a.toString()),
            onPressed: (){
                a++;

              },
        ),
        appBar: AppBar(),
        // ListView : 스크롤바 생김, 스크롤 위치 감지 가능, 메모리 절약
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (c,i){
            print(i.toString());
            return People();
          },
        ),
        bottomNavigationBar: BottomCustom()
      )
    );
  }
}

// stless
class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text('홍길동'),
    );
  }
}

class BottomCustom extends StatelessWidget {
  const BottomCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.phone),
            Icon(Icons.message),
            Icon(Icons.contact_page),
          ],
        ),
      ),
    );
  }
}


