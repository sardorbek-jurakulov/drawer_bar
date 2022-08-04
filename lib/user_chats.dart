import "package:flutter/material.dart";

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
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage("assets/images/first_avatar.jpeg"),
                        ),
                        Icon(Icons.sunny),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: const [
                            Text("Sardorbek Jo'raqulov"),
                            Text("+998 946110464"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
