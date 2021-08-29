import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String message;
  final bool me;

  const Message({Key? key, required this.message, required this.me}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(me) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.deepPurple,
                            // Colors.deepPurpleAccent,
                            Colors.purple,
                          ]
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15)
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                        message,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    ),
                  ),
                )
            )
          ],
        ),
      );
    } else{
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15)
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                        message,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    ),
                  ),
                )
            )
          ],
        ),
      );
    }
  }
}

