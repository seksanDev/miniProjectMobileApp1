import 'package:flutter/material.dart';
import 'Mybox.dart';
import 'MyBoxImages.dart';

class Mybody extends StatefulWidget {
  const Mybody({super.key});

  @override
  State<Mybody> createState() => _MybodyState();
}

class _MybodyState extends State<Mybody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            //Box Main
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            decoration: const BoxDecoration(
              color: Color(0xFF203EA6),
            ),
            child: Column(
              children: [
                const Divider(
                  indent: 160,
                  endIndent: 160,
                  thickness: 4,
                  color: Color(0xFFC0D3E7),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(top: 10, bottom: 15, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'เช็กยอดเงินทันใจ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text('จัดการ',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  //Box แสดงบัญชี
                  margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 10, right: 10),
                                    decoration: const BoxDecoration(),
                                    child: const CircleAvatar(
                                      radius: 15,
                                      backgroundImage: NetworkImage(
                                          'https://i0.wp.com/www.businesslineandlife.co.th/wp-content/uploads/2016/06/logo-bbl-1.png'),
                                    ),
                                  ),
                                  const Text(
                                    'บัญชีของคุณ',
                                    style: TextStyle(
                                        color: Color(0xFF031A72),
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                          const Text(
                            "xxx-x-xxxxxx",
                            style: TextStyle(
                              color: Color(0xFF7E818A),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 3),
                            child: const Row(
                              children: [
                                Text(
                                  'XX.',
                                  style: TextStyle(
                                      color: Color(0xFF031A72),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                                Text(
                                  'xx',
                                  style: TextStyle(
                                      color: Color(0xFF031A72),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 5),
                            child: const Text(
                              'THB',
                              style: TextStyle(
                                  color: Color(0xFF031A72), fontSize: 10),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.only(
                                        left: 15, right: 15),
                                    width: 1,
                                    height: 20,
                                    color: Colors.grey[400]),
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 5, right: 5),
                                  child: const Icon(
                                    Icons.visibility,
                                    size: 15,
                                    color: Color(0xFF2C36B2),
                                  ),
                                ),
                                const Text(
                                  'แสดง',
                                  style: TextStyle(
                                      color: Color(0xFF2C36B2),
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'เมนูลัด',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Mybox(Icons.sync_alt, "โอนเงิน"),
                          const SizedBox(width: 9),
                          Mybox(Icons.arrow_circle_up, "เติมเงิน"),
                          const SizedBox(width: 9),
                          Mybox(
                              Icons.currency_exchange, "ถอนเงินไม่ใช้ \n บัตร"),
                          const SizedBox(width: 9),
                          Mybox(Icons.receipt_long, "จ่ายบิล"),
                          const SizedBox(width: 9),
                          Mybox(Icons.history, "ประวัติการทำ\nรายการ"),
                          const SizedBox(width: 9),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          //Snap
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Snap',
                            style: TextStyle(
                                color: Color(0xFF031A72),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text('แสดงทั้งหมด',
                                  style: TextStyle(
                                      color: Color(0xFF031A72),
                                      fontWeight: FontWeight.bold)),
                              Icon(
                                Icons.chevron_right,
                                color: Color(0xFF031A72),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      MyBoxImages("POP Trend", 'assets/images/2.jpg'),
                      const SizedBox(width: 10),
                      MyBoxImages("BBLAM", 'assets/images/3.jpg'),
                      const SizedBox(width: 10),
                      MyBoxImages("Smart Trick", 'assets/images/4.jpg'),
                      const SizedBox(width: 10),
                      MyBoxImages("หลักทรัพย์บัวหลวง", 'assets/images/5.jpg'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 370,
                      height: 125,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/1.jpg'),
                            fit: BoxFit.fill),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
