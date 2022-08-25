import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsapp/pages/status/components/thumb_clip.dart';

class StatusThumb extends StatelessWidget {
  const StatusThumb({
    Key? key,
    required this.datum,
  }) : super(key: key);

  final Map<String, dynamic> datum;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(2.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(datum["thumb"]),
              radius: 25,
            ),
          ),
          /*  const Positioned(
            right: 1,
            top: 0,
            left: 1,
            bottom: 0,
            child: ThumbClip(),
          ),*/
        ],
      ),
    );
  }
}
