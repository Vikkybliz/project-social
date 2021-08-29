import 'package:flutter/material.dart';
import 'package:project/models/chat_home_model.dart';

import 'input.dart';
import 'message.dart';

class OpenChat extends StatelessWidget {
  final String username, profile;
  const OpenChat({Key? key, required this.username, required this.profile})  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff291540FF),
      appBar: AppBar(
        backgroundColor: Color(0xff291540FF),
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 5),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_rounded),
          ),
        ),
        title: Row(
          children: [
            Container(
              child: CircleAvatar(
                backgroundImage: NetworkImage(profile),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(username, style: TextStyle(color: Colors.white60, fontSize: 20),),
                  Text('last seen 11:30am', style: TextStyle(color: Colors.white54, fontSize: 14),)
                ],
              ),
            )
          ],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
              IconButton(onPressed: () {}, icon: Icon(Icons.call)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: ListView(
            children: List.generate(data.length, (index) => Message(
              me: data[index].me,
              message: data[index].message
            )),
          ),
        ),
      ),
      bottomSheet: Input(),
    );
  }
}