import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsapp/dummy_data.dart';

import 'components/chats_card.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
        itemCount: chatsData.length,
        itemBuilder: (context, index) {
          return ChatsCard(
            data: chatsData[index],
          );
        },
      ),
    );
  }
}
