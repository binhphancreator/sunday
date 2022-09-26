import 'package:flutter/material.dart';
import 'package:sunday/pages/home/category_item_widget.dart';

class CategoryListWidget extends StatefulWidget {
  const CategoryListWidget({super.key});

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...[1, 2, 3, 4].map((index) => Container(
                padding: EdgeInsets.only(bottom: 16, right: 16),
                width: 200,
                child: CategoryItemWidget(),
              ))
        ],
      ),
    );
  }
}
