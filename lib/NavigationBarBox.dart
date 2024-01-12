import 'package:flutter/material.dart';
import 'package:miniproject_1/Mybox.dart';

class NavigationBarBox extends StatelessWidget {
  const NavigationBarBox({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        // shape: const CircularNotchedRectangle(),
        child: SizedBox(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Mybox(Icons.home, "หน้าแรก"),
          Mybox(Icons.payments, "บัญชี"),
          const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 4.0),
                child: Text(
                  "สแกน",
                  style: TextStyle(color: Color(0xFF203EA6), fontSize: 14),
                ),
              ),
            ],
          ),
          Mybox(Icons.equalizer, "การลงทุน"),
          Mybox(Icons.view_comfy_alt, "บริการอื่นๆ"),
        ],
      ),
    ));
  }
}
