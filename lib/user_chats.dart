import "package:flutter/material.dart";
import "dart.io";

class UserChatPage extends StatefulWidget {
  const UserChatPage({Key? key}) : super(key: key);

  @override
  State<UserChatPage> createState() => _UserChatPageState();
}

class _UserChatPageState extends State<UserChatPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text("Drawer create task"),
        ),
        drawer: Drawer(
          child: ListView(
            children: DrawerHeader(
              decoration: BoxDecoration(
                backgroundColor: Colors.blue,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: Image.asset(""),
                      ),
                      Icon(Icons.sunny),
                    ],
                  ),
                  Row(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
