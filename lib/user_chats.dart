import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'dart:math' as math;
import "package:telegram_drawer_bar/models/drawer_bar_section_model.dart";

class UserChatPage extends StatefulWidget {
  const UserChatPage({Key? key}) : super(key: key);

  @override
  State<UserChatPage> createState() => _UserChatPageState();
}

class _UserChatPageState extends State<UserChatPage> {
  List<DrawerBarSection> drawerBarSections = [
    DrawerBarSection("New Group"),
    DrawerBarSection("Contacts"),
    DrawerBarSection("Calls"),
    DrawerBarSection("People Nearby"),
    DrawerBarSection("Saved Messages"),
    DrawerBarSection("Settings"),
    DrawerBarSection("Invite Friends"),
    DrawerBarSection("Telegram Features"),
  ];

  @override
  Widget build(BuildContext context) {
    int lengthOfDrawerBarSections = (drawerBarSections.length);
    Widget drawerBarSectionsCreater(sectionName) {
      return ListTile(
        title: Text(
          sectionName,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text("Drawer create task"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 197,
                child: DrawerHeader(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 25,
                      right: 15,
                      bottom: 15,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CircleAvatar(
                              radius: 45,
                              backgroundImage:
                                  AssetImage("assets/images/first_avatar.jpeg"),
                            ),
                            // Icon(Icons.sunny, color: Colors.white),
                            Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(math.pi),
                              child: const Icon(CupertinoIcons.moon_stars_fill,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Sardorbek Jo'raqulov",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    "+998 946110464",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const RotatedBox(
                              quarterTurns: 3,
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: double.maxFinite,
                child: ListView.builder(
                  itemCount: lengthOfDrawerBarSections,
                  itemBuilder: (BuildContext context, int index) {
                    return drawerBarSectionsCreater(
                        drawerBarSections[index].sectionName);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
