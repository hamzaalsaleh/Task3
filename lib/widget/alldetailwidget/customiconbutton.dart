import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    super.key,
  });
  final List<IconData> iconData = [
    Icons.search,
    Icons.refresh,
    Icons.menu_open_rounded,
    Icons.share,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) => IconButton(
        onPressed: () {},
        icon: Icon(iconData[index], size: 25, color: Colors.grey.shade300),
      ),
    );
  }
}
