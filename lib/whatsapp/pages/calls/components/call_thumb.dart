import 'package:flutter/material.dart';

class CallThumb extends StatelessWidget {
  const CallThumb({
    Key? key,
    required this.datum,
  }) : super(key: key);

  final Map<String, dynamic> datum;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(datum["thumb"]),
      radius: 25,
    );
  }
}
