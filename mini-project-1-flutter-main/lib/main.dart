import 'package:flutter/material.dart';
import 'package:miniproject_1/AppbarBox.dart';
import 'Mybody.dart';
import 'NavigationBarBox.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        //ส่วนของ AppBar
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarBox(),
        ),
        body: Mybody(), //Body พื้นหลังสีนํ้าเงิน
        //BottomAppBar
        bottomNavigationBar: NavigationBarBox(),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Color(0xFF203EA6),
          child: Icon(Icons.fullscreen, size: 50),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
