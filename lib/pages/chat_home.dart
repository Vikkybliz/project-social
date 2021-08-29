import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/models/chat_home_model.dart';
import 'package:project/models/open_chat_model.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, i) => Column(
            children: [
              Divider(height: 10,),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                    OpenChat(
                      profile: data[i].avatar,
                      username: data[i].name
                    ),
                  )
                  );
                },
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(data[i].avatar),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data[i].name,
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      data[i].time,
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 14,
                      ),
                    ),
                  ],
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    data[i].message,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white60,
                      fontSize: 15,
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
