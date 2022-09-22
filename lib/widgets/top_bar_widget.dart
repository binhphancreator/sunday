import 'package:flutter/material.dart';

class TopBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final double height;
  final Widget child;

  const TopBarWidget({super.key, required this.height, required this.child});

  @override
  State<TopBarWidget> createState() => _TopBarWidgetState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _TopBarWidgetState extends State<TopBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(),
      child: widget.child,
    );
  }
}
