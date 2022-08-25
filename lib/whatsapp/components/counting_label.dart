import 'package:flutter/material.dart';

class CountingLabel extends StatelessWidget {
  const CountingLabel({Key? key, required this.count}) : super(key: key);
  final int count;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        // borderRadius: BorderRadius.all(Radius.circular(20)),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3),
        child: Text(
          count > 9 ? "9+" : count.toString(),
          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 11),
        ),
      ),
    );
  }
}
