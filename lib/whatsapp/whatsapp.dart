import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_clone/whatsapp/components/counting_label.dart';
import 'package:whatsapp_clone/whatsapp/pages/calls/calls_screen.dart';
import 'package:whatsapp_clone/whatsapp/pages/chats/chats_screen.dart';
import 'package:whatsapp_clone/whatsapp/pages/status/status_screen.dart';

import 'dummy_data.dart';

class Whatsapp extends StatelessWidget {
  const Whatsapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.teal,
          elevation: 0.5,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          title: const Text("WhatsApp Clone"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
          bottom: TabBar(
            tabs: [
              const Tab(
                icon: Icon(Icons.camera_alt),
                iconMargin: EdgeInsets.zero,
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        "CHATS",
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    CountingLabel(count: chatsData.length),
                  ],
                ),
              ),
              const Tab(
                child: Text(
                  "STATUS",
                  style: TextStyle(fontSize: 13),
                ),
              ),
              const Tab(
                child: Text(
                  "CALLS",
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          Text("First"),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ]),
      ),
    );
  }
}
