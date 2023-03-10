import 'package:chimap_actual/pages/after_test_Pages/test_list.dart';
import 'package:flutter/material.dart';
import 'package:chimap_actual/utils/test_model.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';

class TestsPage2 extends StatefulWidget {
  const TestsPage2({Key? key}) : super(key: key);

  @override
  _TestsPageState2 createState() => _TestsPageState2();
}

class _TestsPageState2 extends State<TestsPage2> {
  final FlutterTts tts = FlutterTts();

  int currentPage = 0;
  int num = 1;

  double numFSize = 24.0;
  double QFSize = 24.0;
  double AFSize = 18.0;

  bool onTap1_1 = false;
  bool onTap1_2 = false;
  bool onTap1_3 = false;
  bool onTap1_4 = false;
  bool onTap1_5 = false;

  bool onTap2_1 = false;
  bool onTap2_2 = false;
  bool onTap2_3 = false;
  bool onTap2_4 = false;
  bool onTap2_5 = false;

  bool onTap3_1 = false;
  bool onTap3_2 = false;
  bool onTap3_3 = false;
  bool onTap3_4 = false;
  bool onTap3_5 = false;

  bool onTap4_1 = false;
  bool onTap4_2 = false;
  bool onTap4_3 = false;
  bool onTap4_4 = false;
  bool onTap4_5 = false;

  bool onTap5_1 = false;
  bool onTap5_2 = false;
  bool onTap5_3 = false;
  bool onTap5_4 = false;
  bool onTap5_5 = false;

  bool onTap6_1 = false;
  bool onTap6_2 = false;
  bool onTap6_3 = false;
  bool onTap6_4 = false;
  bool onTap6_5 = false;

  bool onTap7_1 = false;
  bool onTap7_2 = false;
  bool onTap7_3 = false;
  bool onTap7_4 = false;
  bool onTap7_5 = false;

  bool onTap8_1 = false;
  bool onTap8_2 = false;
  bool onTap8_3 = false;
  bool onTap8_4 = false;
  bool onTap8_5 = false;

  double sum = 0.0;
  int index1 = 0;
  int index2 = 0;
  int index3 = 0;
  int index4 = 0;
  int index5 = 0;
  int index6 = 0;
  int index7 = 0;
  int index8 = 0;

  double count = 8.0;

  List<double> ask = [0.0, 1.0, 2.0, 3.0, 4.0];
  final PageController controller = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    tts.setLanguage('kr');
    tts.setSpeechRate(0.4);

    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(

            title: Text('????????????'),
          ),

          body: _bodyWidget(),
        ),
      ),
    );
  }

  _bodyWidget() {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: controller,
      onPageChanged: (page) {
        setState(() {});
      },
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: ListView(
              children: [
                SizedBox(height: 25.0),
                Container(
                    width: 300,
                    height: 200,
                    child: Column(
                      children: [
                        Text(
                          '$num???: ????????????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: numFSize,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '????????? ?????? ????????? ???????????? ?????? ????????? ??? ????????? ?????? ?????? ????????????????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: QFSize,
                            color: Colors.black87,
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 30,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              primary: Color(0xEBFFBD9D),
                            ),
                            onPressed: () {
                              tts.speak(
                                  '1???: ????????????.. ????????? ?????? ????????? ???????????? ?????? ????????? ??? ????????? ?????? ?????? ????????????????   1??? ?????? ??????, 2??? ?????? ????????? ??????, 3??? ?????? ????????? ??????, 4??? ?????????, 5??? ????????????, ??????????????? ????????? ???????????????');
                            },
                            icon: Icon(Icons.speaker),
                            label: Text(
                              '??????',
                              style: TextStyle(
                                fontFamily: "Gosan",
                                fontSize: 25.0,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Expanded(child: TestList(),),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 131.0,
                      height: 31.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 131.0,
                      height: 31.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: (!(onTap1_1|onTap1_2|onTap1_3|onTap1_4|onTap1_5))? Colors.grey :Color(0xFFFFBD9D),
                        ),
                        onPressed: (!(onTap1_1|onTap1_2|onTap1_3|onTap1_4|onTap1_5))? null : () {
                          tts.stop();
                          if (index1 == 4) {
                            count--;
                          } else {
                            sum += ask[index1];
                          }
                          print(sum);
                          num++;
                          currentPage++;
                          controller.jumpToPage(currentPage);
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: ListView(
              children: [
                SizedBox(height: 25.0),
                Container(
                  width: 300,
                  height: 200,
                  child: Column(
                    children: [
                      Text(
                        '$num???: ??? ??????',
                        style: TextStyle(
                          fontFamily: "Gosan",
                          fontSize: numFSize,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '????????? ????????????, ????????? ?????? ????????? ?????? ?????? ?????? ????????? ?????? ????????????????',
                        style: TextStyle(
                          fontFamily: "Gosan",
                          fontSize: QFSize,
                          color: Colors.black87,
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 30,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: Color(0xEBFFBD9D),
                          ),
                          onPressed: () {
                            tts.speak(
                                '2???: ??? ??????.. ????????? ????????????, ????????? ?????? ????????? ?????? ?????? ?????? ????????? ?????? ????????????????   1??? ?????? ??????, 2??? ?????? ????????? ??????, 3??? ?????? ????????? ??????, 4??? ?????????, 5??? ????????????, ??????????????? ????????? ???????????????');
                          },
                          icon: Icon(Icons.speaker),
                          label: Text(
                            '??????',
                            style: TextStyle(
                              fontFamily: "Gosan",
                              fontSize: 25.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap2_1 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap2_1 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index2 = 0;
                        onTap2_1 = true;
                        onTap2_2 = false;
                        onTap2_3 = false;
                        onTap2_4 = false;
                        onTap2_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap2_2 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ????????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap2_2 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index2 = 1;
                        onTap2_1 = false;
                        onTap2_2 = true;
                        onTap2_3 = false;
                        onTap2_4 = false;
                        onTap2_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap2_3 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ????????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap2_3 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index2 = 2;
                        onTap2_1 = false;
                        onTap2_2 = false;
                        onTap2_3 = true;
                        onTap2_4 = false;
                        onTap2_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap2_4 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap2_4 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index2 = 3;
                        onTap2_1 = false;
                        onTap2_2 = false;
                        onTap2_3 = false;
                        onTap2_4 = true;
                        onTap2_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap2_5 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '????????????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap2_5 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index2 = 4;
                        onTap2_1 = false;
                        onTap2_2 = false;
                        onTap2_3 = false;
                        onTap2_4 = false;
                        onTap2_5 = true;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 131.0,
                      height: 31.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          tts.stop();
                          if (index1 == 4) {
                            count++;
                          } else {
                            sum -= ask[index1];
                          }
                          num--;
                          currentPage--;
                          controller.jumpToPage(currentPage);
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 131.0,
                      height: 31.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: (!(onTap1_1|onTap1_2|onTap1_3|onTap1_4|onTap1_5))? Colors.grey :Color(0xFFFFBD9D),
                        ),
                        onPressed: (!(onTap2_1|onTap2_2|onTap2_3|onTap2_4|onTap2_5))? null :() {
                          tts.stop();
                          if (index2 == 4) {
                            count--;
                          } else {
                            sum += ask[index2];
                          }
                          print(sum);
                          num++;
                          currentPage++;
                          controller.jumpToPage(currentPage);
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: ListView(
              children: [
                SizedBox(height: 25.0),
                Container(
                  width: 300,
                  height: 200,
                  child: Column(
                    children: [
                      Text(
                        '$num???: ?????? ????????? ?????? ?????????',
                        style: TextStyle(
                          fontFamily: "Gosan",
                          fontSize: numFSize,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '???????????????, ????????? ?????? ???????????? ??? ????????? ???????????? ?????? ???(???: ??????, ?????? ?????????, ?????????)??? ???????????? ???????????? ??????????',
                        style: TextStyle(
                          fontFamily: "Gosan",
                          fontSize: QFSize,
                          color: Colors.black87,
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 30,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: Color(0xEBFFBD9D),
                          ),
                          onPressed: () {
                            tts.speak(
                                '3???: ?????? ????????? ?????? ?????????.. ???????????????, ????????? ?????? ???????????? ??? ????????? ???????????? ?????? ???(???: ??????, ?????? ?????????, ?????????)??? ???????????? ???????????? ??????????   1??? ?????? ??????, 2??? ?????? ????????? ??????, 3??? ?????? ????????? ??????, 4??? ?????????, 5??? ????????????, ??????????????? ????????? ???????????????');
                          },
                          icon: Icon(Icons.speaker),
                          label: Text(
                            '??????',
                            style: TextStyle(
                              fontFamily: "Gosan",
                              fontSize: 25.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap3_1 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap3_1 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index3 = 0;
                        onTap3_1 = true;
                        onTap3_2 = false;
                        onTap3_3 = false;
                        onTap3_4 = false;
                        onTap3_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap3_2 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ????????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap3_2 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index3 = 1;
                        onTap3_1 = false;
                        onTap3_2 = true;
                        onTap3_3 = false;
                        onTap3_4 = false;
                        onTap3_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap3_3 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ????????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap3_3 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index3 = 2;
                        onTap3_1 = false;
                        onTap3_2 = false;
                        onTap3_3 = true;
                        onTap3_4 = false;
                        onTap3_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap3_4 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap3_4 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index3 = 3;
                        onTap3_1 = false;
                        onTap3_2 = false;
                        onTap3_3 = false;
                        onTap3_4 = true;
                        onTap3_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap3_5 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '????????????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap3_5 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index3 = 4;
                        onTap3_1 = false;
                        onTap3_2 = false;
                        onTap3_3 = false;
                        onTap3_4 = false;
                        onTap3_5 = true;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 131.0,
                      height: 31.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          tts.stop();
                          if (index2 == 4) {
                            count++;
                          } else {
                            sum -= ask[index2];
                          }
                          num--;
                          currentPage--;
                          controller.jumpToPage(currentPage);
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 131.0,
                      height: 31.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: (!(onTap3_1|onTap3_2|onTap3_3|onTap3_4|onTap3_5))? Colors.grey :Color(0xFFFFBD9D),
                        ),
                        onPressed: (!(onTap3_1|onTap3_2|onTap3_3|onTap3_4|onTap3_5))? null :() {
                          tts.stop();
                          if (index3 == 4) {
                            count--;
                          } else {
                            sum += ask[index3];
                          }
                          print(sum);
                          num++;
                          currentPage++;
                          controller.jumpToPage(currentPage);
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: ListView(
              children: [
                SizedBox(height: 25.0),
                Container(
                  width: 300,
                  height: 200,
                  child: Column(
                    children: [
                      Text(
                        '$num???: ?????? ??????',
                        style: TextStyle(
                          fontFamily: "Gosan",
                          fontSize: numFSize,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '????????? ????????? ???????????? ????????? ????????????, ????????? ?????? ????????? ????????? ?????????????',
                        style: TextStyle(
                          fontFamily: "Gosan",
                          fontSize: QFSize,
                          color: Colors.black87,
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 30,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: Color(0xEBFFBD9D),
                          ),
                          onPressed: () {
                            tts.speak(
                                '4???: ?????? ??????.. ????????? ????????? ???????????? ????????? ????????????, ????????? ?????? ????????? ????????? ?????????????   1??? ?????? ??????, 2??? ?????? ????????? ??????, 3??? ?????? ????????? ??????, 4??? ?????????, 5??? ????????????, ??????????????? ????????? ???????????????');
                          },
                          icon: Icon(Icons.speaker),
                          label: Text(
                            '??????',
                            style: TextStyle(
                              fontFamily: "Gosan",
                              fontSize: 25.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap4_1 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap4_1 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index4 = 0;
                        onTap4_1 = true;
                        onTap4_2 = false;
                        onTap4_3 = false;
                        onTap4_4 = false;
                        onTap4_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap4_2 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ????????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap4_2 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index4 = 1;
                        onTap4_1 = false;
                        onTap4_2 = true;
                        onTap4_3 = false;
                        onTap4_4 = false;
                        onTap4_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap4_3 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ????????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap4_3 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index4 = 2;
                        onTap4_1 = false;
                        onTap4_2 = false;
                        onTap4_3 = true;
                        onTap4_4 = false;
                        onTap4_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap4_4 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap4_4 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index4 = 3;
                        onTap4_1 = false;
                        onTap4_2 = false;
                        onTap4_3 = false;
                        onTap4_4 = true;
                        onTap4_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap4_5 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '????????????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap4_5 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index4 = 4;
                        onTap4_1 = false;
                        onTap4_2 = false;
                        onTap4_3 = false;
                        onTap4_4 = false;
                        onTap4_5 = true;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 131.0,
                      height: 31.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          tts.stop();
                          if (index3 == 4) {
                            count++;
                          } else {
                            sum -= ask[index3];
                          }
                          num--;
                          currentPage--;
                          controller.jumpToPage(currentPage);
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 131.0,
                      height: 31.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: (!(onTap4_1|onTap4_2|onTap4_3|onTap4_4|onTap4_5))? Colors.grey :Color(0xFFFFBD9D),
                        ),
                        onPressed: (!(onTap4_1|onTap4_2|onTap4_3|onTap4_4|onTap4_5))? null :() {
                          tts.stop();
                          if (index4 == 4) {
                            count--;
                          } else {
                            sum += ask[index4];
                          }
                          print(sum);
                          num++;
                          currentPage++;
                          controller.jumpToPage(currentPage);
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: ListView(
              children: [
                SizedBox(height: 25.0),
                Container(
                  width: 300,
                  height: 200,
                  child: Column(
                    children: [
                      Text(
                        '$num???: ??? ??????',
                        style: TextStyle(
                          fontFamily: "Gosan",
                          fontSize: numFSize,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '????????? ????????? ?????? ?????? ?????????????',
                        style: TextStyle(
                          fontFamily: "Gosan",
                          fontSize: QFSize,
                          color: Colors.black87,
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 30,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: Color(0xEBFFBD9D),
                          ),
                          onPressed: () {
                            tts.speak(
                                '5???: ??? ??????.. ????????? ????????? ?????? ?????? ?????????????   1??? ?????? ??????, 2??? ?????? ????????? ??????, 3??? ?????? ????????? ??????, 4??? ?????????, 5??? ????????????, ??????????????? ????????? ???????????????');
                          },
                          icon: Icon(Icons.speaker),
                          label: Text(
                            '??????',
                            style: TextStyle(
                              fontFamily: "Gosan",
                              fontSize: 25.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap5_1 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap5_1 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index5 = 0;
                        onTap5_1 = true;
                        onTap5_2 = false;
                        onTap5_3 = false;
                        onTap5_4 = false;
                        onTap5_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap5_2 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ????????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap5_2 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index5 = 1;
                        onTap5_1 = false;
                        onTap5_2 = true;
                        onTap5_3 = false;
                        onTap5_4 = false;
                        onTap5_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap5_3 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ????????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap5_3 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index5 = 2;
                        onTap5_1 = false;
                        onTap5_2 = false;
                        onTap5_3 = true;
                        onTap5_4 = false;
                        onTap5_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap5_4 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap5_4 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index5 = 3;
                        onTap5_1 = false;
                        onTap5_2 = false;
                        onTap5_3 = false;
                        onTap5_4 = true;
                        onTap5_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap5_5 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '????????????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap5_5 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index5 = 4;
                        onTap5_1 = false;
                        onTap5_2 = false;
                        onTap5_3 = false;
                        onTap5_4 = false;
                        onTap5_5 = true;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 131.0,
                      height: 31.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          tts.stop();
                          if (index4 == 4) {
                            count++;
                          } else {
                            sum -= ask[index4];
                          }
                          num--;
                          currentPage--;
                          controller.jumpToPage(currentPage);
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 131.0,
                      height: 31.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: (!(onTap5_1|onTap5_2|onTap5_3|onTap5_4|onTap5_5))? Colors.grey :Color(0xFFFFBD9D),
                        ),
                        onPressed: (!(onTap5_1|onTap5_2|onTap5_3|onTap5_4|onTap5_5))? null :() {
                          tts.stop();
                          if (index5 == 4) {
                            count--;
                          } else {
                            sum += ask[index5];
                          }
                          print(sum);
                          num++;
                          currentPage++;
                          controller.jumpToPage(currentPage);
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: ListView(
              children: [
                SizedBox(height: 25.0),
                Container(
                  width: 300,
                  height: 200,
                  child: Column(
                    children: [
                      Text(
                        '$num???: ?????? ??????',
                        style: TextStyle(
                          fontFamily: "Gosan",
                          fontSize: numFSize,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '??????, ??????, ??????, ??????, ??????, ??????, ??????, ?????? ?????? ????????? ?????? ????????? ????????? ??? ????????????????',
                        style: TextStyle(
                          fontFamily: "Gosan",
                          fontSize: QFSize,
                          color: Colors.black87,
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 30,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: Color(0xEBFFBD9D),
                          ),
                          onPressed: () {
                            tts.speak(
                                '6???: ?????? ??????.. ?????????, ??????, ??????, ??????, ??????, ??????, ??????, ?????? ?????? ????????? ?????? ????????? ????????? ??? ????????????????   1??? ?????? ??????, 2??? ?????? ????????? ??????, 3??? ?????? ????????? ??????, 4??? ?????????, 5??? ????????????, ??????????????? ????????? ???????????????');
                          },
                          icon: Icon(Icons.speaker),
                          label: Text(
                            '??????',
                            style: TextStyle(
                              fontFamily: "Gosan",
                              fontSize: 25.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap6_1 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap6_1 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index6 = 0;
                        onTap6_1 = true;
                        onTap6_2 = false;
                        onTap6_3 = false;
                        onTap6_4 = false;
                        onTap6_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap6_2 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ????????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap6_2 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index6 = 1;
                        onTap6_1 = false;
                        onTap6_2 = true;
                        onTap6_3 = false;
                        onTap6_4 = false;
                        onTap6_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap6_3 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ????????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap6_3 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index6 = 2;
                        onTap6_1 = false;
                        onTap6_2 = false;
                        onTap6_3 = true;
                        onTap6_4 = false;
                        onTap6_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap6_4 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap6_4 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index6 = 3;
                        onTap6_1 = false;
                        onTap6_2 = false;
                        onTap6_3 = false;
                        onTap6_4 = true;
                        onTap6_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap6_5 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '????????????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap6_5 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index6 = 4;
                        onTap6_1 = false;
                        onTap6_2 = false;
                        onTap6_3 = false;
                        onTap6_4 = false;
                        onTap6_5 = true;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 131.0,
                      height: 31.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          tts.stop();
                          if (index5 == 4) {
                            count++;
                          } else {
                            sum -= ask[index5];
                          }
                          num--;
                          currentPage--;
                          controller.jumpToPage(currentPage);
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 131.0,
                      height: 31.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: (!(onTap6_1|onTap6_2|onTap6_3|onTap6_4|onTap6_5))? Colors.grey :Color(0xFFFFBD9D),
                        ),
                        onPressed: (!(onTap6_1|onTap6_2|onTap6_3|onTap6_4|onTap6_5))? null : () {
                          tts.stop();
                          if (index6 == 4) {
                            count--;
                          } else {
                            sum += ask[index6];
                          }
                          print(sum);
                          num++;
                          currentPage++;
                          controller.jumpToPage(currentPage);
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: ListView(
              children: [
                SizedBox(height: 25.0),
                Container(
                  width: 300,
                  height: 200,
                  child: Column(
                    children: [
                      Text(
                        '$num???: ???????????? ??????',
                        style: TextStyle(
                          fontFamily: "Gosan",
                          fontSize: numFSize,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '???????????? ??????????????? ?????? ??? ????????? ????????????????',
                        style: TextStyle(
                          fontFamily: "Gosan",
                          fontSize: QFSize,
                          color: Colors.black87,
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 30,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: Color(0xEBFFBD9D),
                          ),
                          onPressed: () {
                            tts.speak(
                                '7???: ???????????? ??????.. ???????????? ??????????????? ?????? ??? ????????? ????????????????   1??? ?????? ??????, 2??? ?????? ????????? ??????, 3??? ?????? ????????? ??????, 4??? ?????????, 5??? ????????????, ??????????????? ????????? ???????????????');
                          },
                          icon: Icon(Icons.speaker),
                          label: Text(
                            '??????',
                            style: TextStyle(
                              fontFamily: "Gosan",
                              fontSize: 25.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap7_1 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap7_1 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index7 = 0;
                        onTap7_1 = true;
                        onTap7_2 = false;
                        onTap7_3 = false;
                        onTap7_4 = false;
                        onTap7_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap7_2 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ????????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap7_2 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index7 = 1;
                        onTap7_1 = false;
                        onTap7_2 = true;
                        onTap7_3 = false;
                        onTap7_4 = false;
                        onTap7_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap7_3 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ????????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap7_3 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index7 = 2;
                        onTap7_1 = false;
                        onTap7_2 = false;
                        onTap7_3 = true;
                        onTap7_4 = false;
                        onTap7_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap7_4 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap7_4 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index7 = 3;
                        onTap7_1 = false;
                        onTap7_2 = false;
                        onTap7_3 = false;
                        onTap7_4 = true;
                        onTap7_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap7_5 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '????????????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap7_5 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index7 = 4;
                        onTap7_1 = false;
                        onTap7_2 = false;
                        onTap7_3 = false;
                        onTap7_4 = false;
                        onTap7_5 = true;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 131.0,
                      height: 31.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          tts.stop();
                          if (index6 == 4) {
                            count++;
                          } else {
                            sum -= ask[index6];
                          }
                          num--;
                          currentPage--;
                          controller.jumpToPage(currentPage);
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 131.0,
                      height: 31.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: (!(onTap7_1|onTap7_2|onTap7_3|onTap7_4|onTap7_5))? Colors.grey :Color(0xFFFFBD9D),
                        ),
                          onPressed: (!(onTap7_1|onTap7_2|onTap7_3|onTap7_4|onTap7_5))? null : () {
                            tts.stop();
                          if (index7 == 4) {
                            count--;
                          } else {
                            sum += ask[index7];
                          }
                          print(sum);
                          num++;
                          currentPage++;
                          controller.jumpToPage(currentPage);
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: ListView(
              children: [
                SizedBox(height: 25.0),
                Container(
                  width: 300,
                  height: 200,
                  child: Column(
                    children: [
                      Text(
                        '$num???: ?????? ??????',
                        style: TextStyle(
                          fontFamily: "Gosan",
                          fontSize: numFSize,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '???????????? ?????? ????????? ?????? ?????? ????????? ????????????????',
                        style: TextStyle(
                          fontFamily: "Gosan",
                          fontSize: QFSize,
                          color: Colors.black87,
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 30,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: Color(0xEBFFBD9D),
                          ),
                          onPressed: () {
                            tts.speak(
                                '8???: ?????? ??????.. ???????????? ?????? ????????? ?????? ?????? ????????? ????????????????   1??? ?????? ??????, 2??? ?????? ????????? ??????, 3??? ?????? ????????? ??????, 4??? ?????????, 5??? ????????????, ??????????????? ????????? ???????????????');
                          },
                          icon: Icon(Icons.speaker),
                          label: Text(
                            '??????',
                            style: TextStyle(
                              fontFamily: "Gosan",
                              fontSize: 25.0,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap8_1 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap8_1 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index8 = 0;
                        onTap8_1 = true;
                        onTap8_2 = false;
                        onTap8_3 = false;
                        onTap8_4 = false;
                        onTap8_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap8_2 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ????????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap8_2 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index8 = 1;
                        onTap8_1 = false;
                        onTap8_2 = true;
                        onTap8_3 = false;
                        onTap8_4 = false;
                        onTap8_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap8_3 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????? ????????? ??????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap8_3 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index8 = 2;
                        onTap8_1 = false;
                        onTap8_2 = false;
                        onTap8_3 = true;
                        onTap8_4 = false;
                        onTap8_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap8_4 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '?????????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap8_4 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index8 = 3;
                        onTap8_1 = false;
                        onTap8_2 = false;
                        onTap8_3 = false;
                        onTap8_4 = true;
                        onTap8_5 = false;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Color(0xFFA6A6A6)),
                    color: onTap8_5 ? const Color(0xFFFFCAB0) : Colors.white,
                  ),
                  child: InkWell(
                    child: Center(
                      child: Text(
                        '????????????',
                        style: TextStyle(
                          fontSize: AFSize,
                          color: onTap8_5 ? Colors.white : Colors.black,
                          fontFamily: 'Gosan',
                        ),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        index8 = 4;
                        onTap8_1 = false;
                        onTap8_2 = false;
                        onTap8_3 = false;
                        onTap8_4 = false;
                        onTap8_5 = true;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 131.0,
                      height: 31.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          tts.stop();
                          if (index7 == 4) {
                            count++;
                          } else {
                            sum -= ask[index7];
                          }
                          num--;
                          currentPage--;
                          controller.jumpToPage(currentPage);
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 131.0,
                      height: 31.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          primary: (!(onTap8_1|onTap8_2|onTap8_3|onTap8_4|onTap8_5))? Colors.grey :Color(0xFFFFBD9D),
                        ),
                        onPressed: (!(onTap8_1|onTap8_2|onTap8_3|onTap8_4|onTap8_5))? null : () {
                          tts.stop();
                          if (index8 == 4) {
                            count--;
                          } else {
                            sum += ask[index8];
                          }
                          print(sum);
                          double avg = sum / count;
                          if (avg >= 0.47) {
                            Get.offNamed('/testInitPage/resultChimae');
                          } else {
                            Get.offNamed('/testInitPage/resultNormal');
                          }
                        },
                        child: const Text(
                          '??????',
                          style: TextStyle(
                            fontFamily: "Gosan",
                            fontSize: 28.0,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
