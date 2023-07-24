import 'package:flutter/material.dart';

@immutable
class ImageIconsListtile extends StatelessWidget {
  final Function() onTap;
  final String title;
  final String subTitle;
  final String img;
  final Function() tapOne;
  final Function() tapTwo;
  final IconData iconOne;
  final IconData iconTwo;
  final Color? iconColor;
  final Color? textColor;
  final Color bgColor;
  const ImageIconsListtile({
    super.key,
    required this.bgColor,
    required this.onTap,
    required this.title,
    required this.subTitle,
    required this.img,
    required this.tapOne,
    required this.tapTwo,
    required this.iconOne,
    required this.iconTwo,
    this.iconColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: bgColor,
      dense: false,
      iconColor: iconColor,
      textColor: textColor,
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Wrap(
        spacing: 12,
        children: [
          IconButton(
            onPressed: tapOne,
            icon: Icon(iconOne),
          ),
          IconButton(
            onPressed: tapTwo,
            icon: Icon(iconTwo),
          ),
        ],
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          img,
          height: 64,
          width: 64,
        ),
      ),
      onTap: onTap,
    );
  }
}
