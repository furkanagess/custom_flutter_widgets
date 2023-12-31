import 'package:custom_widgets_app/base/extension/context_extension.dart';
import 'package:flutter/material.dart';

@immutable
final class CommentCard extends StatelessWidget {
  const CommentCard({
    super.key,
    required this.title,
    required this.comment,
    required this.user,
    required this.starCount,
    required this.cardColor,
    required this.onTap,
  });
  final String title;
  final String comment;
  final String user;
  final int starCount;
  final Color cardColor;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: starCount,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                ),
              ),
              Text(
                comment,
              ),
              Row(
                children: [
                  const Spacer(),
                  Text(
                    user,
                    style: context.textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
