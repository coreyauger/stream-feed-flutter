import 'package:flutter/material.dart';

class ReactionIcon extends StatelessWidget {
  const ReactionIcon({Key? key, this.count, required this.icon, this.onTap})
      : super(key: key);
  final int? count;
  final Widget icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          SizedBox(width: 6),
          count != null ? Text('$count') : Container()
        ],
      ),
    );
  }
}
