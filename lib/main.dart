import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project/pages/chat_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Project",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  bool showFab = true;

  late AnimationController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = AnimationController(vsync: this, duration: kThemeAnimationDuration);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  bool _handleScroll(ScrollNotification notification) {
    if (notification.depth == 0) {
      if (notification is UserScrollNotification) {
        final UserScrollNotification userScroll = notification;
        switch (userScroll.direction) {
          case ScrollDirection.forward:
            if (userScroll.metrics.maxScrollExtent !=
                userScroll.metrics.minScrollExtent) {
              _scrollController.forward();
            }
            break;
          case ScrollDirection.reverse:
            if (userScroll.metrics.maxScrollExtent !=
                userScroll.metrics.minScrollExtent) {
              _scrollController.reverse();
            }
            break;
          case ScrollDirection.idle:
            break;
        }
      }
    }
    return false;
  }



  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: _handleScroll,
      child: Scaffold(
        backgroundColor: Color(0xff291540FF),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
              ),
              Container(
                child: Text("Message"),
              ),
              Container(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search)
                )
              )
            ],
          ),
          elevation: 0,
          backgroundColor: Color(0xff291540FF),
        ),
        body: Chat(),
    floatingActionButton: ScaleTransition(
    scale: _scrollController,
    alignment: Alignment.bottomCenter,
    child: FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    ),
        ),
    ),
    );
  }
}


