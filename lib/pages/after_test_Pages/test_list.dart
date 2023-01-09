import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'test_card.dart';

class TestList extends StatefulWidget {
  TestList( {Key? key}) : super(key: key);


  @override
  State<TestList> createState() => _TestListState();
}

class _TestListState extends State<TestList> {
 final List<String> entries = <String> ['혼자가능','약간 도움이 필요', '많은 도움이 필요', '불가능', '해당없음'];

  @override
  Widget build(BuildContext context) {

        return ListView.builder(
            itemCount: entries.length,
            itemBuilder: (context, int index) {

              //사용자가 클릭하면 반응함.
              return GestureDetector(
                onTap: () {
                  //Get.to(ShowMail(mailDocs[index]));
                },
                //itemCount 갯수만큼, MailCard 를 가져와서 보여줌.
                child: TestCard(entries[index]),
              );
            }
        );
  }
}