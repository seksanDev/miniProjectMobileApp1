import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mybox extends StatelessWidget {
  String text;
  IconData icon;

  Mybox(this.icon, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80, //ขนาดกล่อง
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)), //เปลี่ยนสีตรง color
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8),
                child: Icon(
                  icon,
                  size: 35,
                  color: const Color(0xFF203EA6),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //               Expanded(
              //   child: FittedBox(
              //     child: Text(
              //       'It is a long established text.',
              //       style: TextStyle(fontSize: 58),
              //       softWrap: false,
              //       overflow: TextOverflow.ellipsis,
              //     ),
              //   ),
              // ),

              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Color(0xFF203EA6), fontSize: 14),
                // softWrap: false,
                // overflow: TextOverflow.ellipsis,
              ),
            ],
          )
        ],
      ),
    );
  }
}
