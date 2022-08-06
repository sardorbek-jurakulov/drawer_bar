import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'dart:math' as math;
import "package:telegram_drawer_bar/models/drawer_bar_section_model.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserChatPage extends StatefulWidget {
  const UserChatPage({Key? key}) : super(key: key);

  @override
  State<UserChatPage> createState() => _UserChatPageState();
}

class _UserChatPageState extends State<UserChatPage> {
  List<DrawerBarSection> drawerBarSections = [
    DrawerBarSection("New Group", const Icon(Icons.add)),
    DrawerBarSection("Contacts", const Icon(Icons.add)),
    DrawerBarSection("Calls", const Icon(Icons.add)),
    DrawerBarSection("People Nearby", const Icon(Icons.add)),
    DrawerBarSection("Saved Messages", const Icon(Icons.add)),
    DrawerBarSection("Settings", const Icon(Icons.add)),
    DrawerBarSection("Invite Friends", const Icon(Icons.add)),
    DrawerBarSection("Telegram Features", const Icon(Icons.add)),
  ];

  @override
  Widget build(BuildContext context) {
    int lengthOfDrawerBarSections = (drawerBarSections.length);
    Widget drawerBarSectionsCreater(String sectionName, Icon sectionLeadIcon) {
      return ListTile(
        leading: sectionLeadIcon,
        title: Text(
          sectionName,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 15,
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
              // SizedBox(
              //   height: double.maxFinite,
              //   child: ListView.builder(
              //     itemCount: lengthOfDrawerBarSections,
              //     itemBuilder: (BuildContext context, int index) {
              //       return drawerBarSectionsCreater(
              //           drawerBarSections[index].sectionName,
              //           drawerBarSections[index].sectionLeadIcon);
              //     },
              //   ),
              // ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(children: const [
                  ListTile(
                    leading: Icon(
                      Icons.people_outline,
                      color: Colors.black,
                    ),
                    title: Text(
                      "New Group",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    // horizontalTitleGap: 0,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    dense: true,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person_outline,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Contacts",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    // horizontalTitleGap: 0,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    dense: true,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.local_phone_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Calls",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    // horizontalTitleGap: 0,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    dense: true,
                  ),
                  ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.streetView,
                      color: Colors.black,
                    ),
                    title: Text(
                      "People Nearby",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    // horizontalTitleGap: 0,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    dense: true,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.bookmark_border_rounded,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Saved Messages",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    // horizontalTitleGap: 0,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    dense: true,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    // horizontalTitleGap: 0,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    dense: true,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person_add_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Invite Friends",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    // horizontalTitleGap: 0,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    dense: true,
                  ),
                  ListTile(
                    leading: Icon(
                      CupertinoIcons.question_circle,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Telegram Features",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    // horizontalTitleGap: 0,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.zero,
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    dense: true,
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
