import 'package:flutter/material.dart';

class AppBarBox extends StatelessWidget {
  const AppBarBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //background image
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/appbar.jpg'), fit: BoxFit.fill),
        ),
      ),
      // flexibleSpace: const Image(
      //   image: AssetImage('assets/images/appbar.jpg'),
      //   fit: BoxFit.fill,
      // ),
      toolbarHeight: 80,
      leading: Container(
          margin: const EdgeInsets.only(left: 15.0),
          width: 50,
          height: 50,
          decoration: const ShapeDecoration(
              color: Color(0xFF203EA6), shape: CircleBorder()),
          child: const Icon(Icons.lock_open)),
      title: Column(
        children: [
          Row(
            children: [
              Text(
                "สวัสดี",
                style: TextStyle(color: Colors.grey[400], fontSize: 16),
              ),
            ],
          ),
          const Row(
            children: [
              Text(
                "คุณ รังสิมันต์",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 15, top: 10),
                  child: const Icon(Icons.notifications, size: 30),
                )
              ],
            ),
            Column(children: [
              Container(
                  margin: const EdgeInsets.only(right: 15, top: 10, left: 15),
                  child: const Icon(Icons.settings, size: 30))
            ]),
          ],
        ),
      ],
    );
  }
}
