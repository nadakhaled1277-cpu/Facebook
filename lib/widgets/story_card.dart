import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../data/feed_data.dart';
import 'app_image.dart';
class StoryCard extends StatelessWidget {
  const StoryCard({super.key, required this.story});

  final FeedStory story;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 112,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          fit: StackFit.expand,
          children: [
            AppImage(story.storyImage),
            Positioned(
              top: 5,
              left: 5,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.blue, width: 2),
                ),
                child: ClipOval(
                  child: AppImage(story.userImage, fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
