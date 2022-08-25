import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsapp/dummy_data.dart';

import 'components/status_thumb.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {},
              leading: Stack(
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/profiles/baby.jpg"),
                    radius: 25,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.teal, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              title: const Text(
                "My status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Tap to add status update"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                "Recent updates",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: statusData.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> datum = statusData[index];
                  return ListTile(
                    onTap: () {},
                    leading: StatusThumb(datum: datum),
                    title: Text(
                      datum["user"],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(datum["last"]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.grey.shade300,
            foregroundColor: Colors.grey.shade700,
            mini: true,
            onPressed: () {},
            child: const Icon(Icons.edit),
          ),
          const SizedBox(
            height: 16,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.camera_alt),
          ),
        ],
      ),
    );
  }
}
