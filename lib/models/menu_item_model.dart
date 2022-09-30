class MenuItemModel {
  MenuItemModel({
    required this.icon,
    required this.route,
    required this.text,
    this.center,
  });

  final String icon;
  final String route;
  final String text;
  final bool? center;
}
