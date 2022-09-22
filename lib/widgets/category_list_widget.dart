import 'package:flutter/material.dart';
import 'package:sunday/widgets/category_item_widget.dart';

class CategoryListWidget extends StatefulWidget {
  const CategoryListWidget({super.key});

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Column(
        children: [
          ...[1, 2, 3, 4].map((index) => Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: CategoryItemWidget(),
              ))
        ],
      ),
    );
  }
}
