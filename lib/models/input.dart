import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> with SingleTickerProviderStateMixin {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Color(0xff291540FF),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: Row(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: TextField(
                      controller: _textEditingController,
                      cursorColor: Colors.black38,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                          hintText: "Type here",
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.emoji_emotions),
                          iconSize: 20,
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mic),
                          color: Colors.grey,
                        )
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                      IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.collections)),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add_circle, color: Colors.blue,)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
