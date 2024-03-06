// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          drawerTheme: const DrawerThemeData(scrimColor: Colors.transparent)),
      title: 'Chat App UI',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: const Color(0xFF171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        _globalKey.currentState!.openDrawer();
                        //print('Menu button pressed'); // Add functionality for this IconButton
                      },
                      icon: const Icon(Icons.menu, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {
                        print(
                            'Search button pressed'); // Add functionality for this IconButton
                      },
                      icon: const Icon(Icons.search, color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 10),
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Messages',
                            style: TextStyle(color: Colors.grey, fontSize: 23),
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Online',
                            style: TextStyle(color: Colors.grey, fontSize: 23),
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Groups',
                            style: TextStyle(color: Colors.grey, fontSize: 23),
                          )),
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'More',
                            style: TextStyle(color: Colors.grey, fontSize: 23),
                          )),
                    ]),
              )
            ],
          ),
          Positioned(
              top: 120,
              right: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                decoration: const BoxDecoration(
                    color: Color(0xFF27c1a9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                height: 210,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Favourite Contacts',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            print(
                                'More horizontal button pressed'); // Add functionality for this IconButton
                          },
                          icon:
                              const Icon(Icons.more_horiz, color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 90,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildContactAvatar('Alla', 'image1.jpg'),
                          buildContactAvatar('Ich', 'image2.jpg'),
                          buildContactAvatar('Kim', 'image3.jpg'),
                          buildContactAvatar('John', 'image4.jpg'),
                          buildContactAvatar('Ibex', 'image5.jpg'),
                          buildContactAvatar('Labs', 'image6.jpg'),
                          buildContactAvatar('Lim', 'image7.jpg'),
                          buildContactAvatar('Jack', 'image8.jpg'),
                          buildContactAvatar('Jones', 'image9.jpg'),
                          buildContactAvatar('Cilla', 'image10.jpg'),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 300,
              right: 0,
              left: 0,
              height: MediaQuery.of(context).size.height - 300,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: const BoxDecoration(
                  color: Color(0xFFEFFFFC),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: ListView(
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    //Column(),
                    buildConversationRow(
                        'Alla', 'image1.jpg', 'How are you doing?', 0),
                    buildConversationRow(
                        'Ich', 'image2.jpg', 'How are you doing?', 3),
                    buildConversationRow(
                        'Kim', 'image3.jpg', 'How are you doing?', 0),
                    buildConversationRow(
                        'John', 'image4.jpg', 'How are you doing?', 2),
                    buildConversationRow(
                        'Ibex', 'image5.jpg', 'How are you doing?', 0),
                    buildConversationRow(
                        'Labs', 'image6.jpg', 'How are you doing?', 5),
                    buildConversationRow(
                        'Lim', 'image7.jpg', 'How are you doing?', 3),
                    buildConversationRow(
                        'Jack', 'image8.jpg', 'How are you doing?', 6),
                    buildConversationRow(
                        'Jones', 'image9.jpg', 'How are you doing?', 0),
                    buildConversationRow(
                        'Cilla', 'image10.jpg', 'How are you doing?', 3),
                  ],
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.edit_outlined,
          size: 30,
        ),
        backgroundColor: const Color(0xFF27c1a9),
        onPressed: () {},
      ),
      drawer: Drawer(
        width: 275,
        backgroundColor: Colors.black26,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
          right: Radius.circular(30),
        )),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xF71F1E1E),
            boxShadow: [
              BoxShadow(
                  color: Color(0x3D000000), spreadRadius: 50, blurRadius: 20),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      'Settings',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    UserAvatar(
                      filename: 'image4.jpg',
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'User John',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                settingMenu(
                  icon: Icons.key,
                  title: 'Account',
                ),
                settingMenu(title: 'Chats', icon: Icons.message),
                settingMenu(
                    title: 'Notifications', icon: Icons.notification_add),
                settingMenu(title: 'Data and Storage', icon: Icons.storage),
                settingMenu(title: 'Help', icon: Icons.help),
                Divider(
                  height: 35,
                  color: Colors.green,
                ),
                settingMenu(title: 'Invite a friend', icon: Icons.people),
                SizedBox(
                  height: 306,
                ),
                settingMenu(title: 'Exit', icon: Icons.exit_to_app)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildConversationRow(
      String name, String filename, String userMessage, int msgCount) {
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                UserAvatar(filename: filename),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(userMessage),
                  ],
                )
              ],
            ),
            const SizedBox(
              width: 40,
            ),
            Column(
              children: [
                const Text(
                  '15:35',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                if (msgCount > 0)
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: const Color(0xFF27c1a9),
                    child: Text(
                      msgCount.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Padding buildContactAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          UserAvatar(
            filename: filename,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

class settingMenu extends StatelessWidget {
  final String title;
  final IconData icon;

  const settingMenu({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 35,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}

class UserAvatar extends StatelessWidget {
  final String filename;
  const UserAvatar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 31,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset('assets/images/$filename').image,
      ),
    );
  }
}
