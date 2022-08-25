import 'package:flutter/material.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:whatsapp_clone/whatsapp/dummy_data.dart';
import 'dart:math' as math;

import 'components/call_thumb.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: ListView.builder(
        itemCount: callsData.length,
        itemBuilder: (context, index) {
          Map<String, dynamic> datum = callsData[index];
          return ListTile(
            onTap: () {},
            leading: CallThumb(datum: datum),
            title: Text(
              datum["user"],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                if (datum["direction"] == "in")
                  Transform.rotate(
                    angle: 50 * math.pi / 180,
                    child: Icon(
                      LineariconsFree.arrow_down,
                      color: datum["missed"]
                          ? Colors.red
                          : Theme.of(context).primaryColor,
                    ),
                  ),
                if (datum["direction"] == "out")
                  Transform.rotate(
                    angle: 50 * math.pi / 180,
                    child: Icon(
                      LineariconsFree.arrow_up,
                      color: datum["missed"]
                          ? Colors.red
                          : Theme.of(context).primaryColor,
                    ),
                  ),
                if (datum["count"] > 0) Text(" (${datum["count"]})  "),
                Expanded(
                    child: Text(
                  datum["last"],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )),
              ],
            ),
            trailing: Icon(
              Icons.phone,
              color: Theme.of(context).primaryColor,
            ),
          );
        },
      ),
    );
  }
}
