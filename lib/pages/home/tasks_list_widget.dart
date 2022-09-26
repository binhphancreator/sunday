import 'package:flutter/material.dart';
import 'package:sunday/pages/home/task_item_widget.dart';

class TasksListWidget extends StatefulWidget {
  const TasksListWidget({super.key});

  @override
  State<TasksListWidget> createState() => _TasksListWidgetState();
}

class _TasksListWidgetState extends State<TasksListWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(bottom: 36, left: 16, top: 36),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ...List<int>.generate(2, (i) => i + 1)
              .map((e) => Row(
                    children: [
                      TaskItemWidget(),
                      SizedBox(
                        width: 16,
                      )
                    ],
                  ))
              .toList(),
        ],
      ),
    );
  }
}
