// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App UI',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        print(
                            'Menu button pressed'); // Add functionality for this IconButton
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
                height: 220,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Favourites Contacts',
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
              ))
        ],
      ),
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
              fontSize: 17,
            ),
          ),
        ],
      ),
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
