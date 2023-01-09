import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class TestCard extends StatelessWidget {
  TestCard(this.mailDoc, {Key? key}) : super(key: key);
  //Mail? mailDoc;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0xFFA6A6A6)),
        color: Colors.white,
      ),
      child: InkWell(
        child: Center(
          child: Text('테스트 중입니다.',),
        ),
      ),
    );
  }
}

