import 'package:flutter/material.dart';

class TaskListWidget extends StatefulWidget {
  final EdgeInsets padding;
  const TaskListWidget({super.key, this.padding = const EdgeInsets.all(16)});

  @override
  State<TaskListWidget> createState() => _TaskListWidgetState();
}

class _TaskListWidgetState extends State<TaskListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [],
      ),
    );
  }
}
