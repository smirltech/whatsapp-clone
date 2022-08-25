import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsapp/dummy_data.dart';

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
                  Icon(
                    Icons.arrow_downward,
                    color: datum["missed"]
                        ? Colors.red
                        : Theme.of(context).primaryColor,
                  ),
                if (datum["direction"] == "out")
                  Icon(
                    Icons.arrow_upward,
                    color: datum["missed"]
                        ? Colors.red
                        : Theme.of(context).primaryColor,
                  ),
                Text(datum["last"]),
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
