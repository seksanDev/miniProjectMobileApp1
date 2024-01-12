import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyBoxImages extends StatelessWidget {
  String text;
  String pathImg;
  MyBoxImages(this.text, this.pathImg, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 110,
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(
              color: const Color(0xFFF26594), // สีเส้นขอบ 0xFF2842AE
              width: 2.0),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
            width: 110,
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white, // สีเส้นขอบ
                width: 2.0, // ความหนาของเส้นขอบ
              ),
              borderRadius: BorderRadius.circular(15), // ความโค้งของมุม
              image: DecorationImage(
                image: AssetImage(pathImg),
                fit: BoxFit.cover,
              ), // ใส่ path รูปภาพที่ต้องการแสดงในนี้
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Text(text,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            )));
  }
}
