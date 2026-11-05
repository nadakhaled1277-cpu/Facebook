import 'package:flutter/material.dart';

import '../core/app_assets.dart';
import '../core/app_colors.dart';
import '../core/app_theme.dart';
import '../data/feed_data.dart';
import 'app_image.dart';
import 'app_svg.dart';
import 'create_story_card.dart';
import 'post_widget.dart';
import 'story_card.dart';
class FeedTab extends StatelessWidget {
  const FeedTab({super.key});

  @override
  Widget build(BuildContext context) {
    const divider = Divider(height: 2, thickness: 2, color: AppColors.gray);

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppTheme.screenPadding,
            vertical: 20,
          ),
          child: Row(
            children: [
              const AppAvatar(AppAssets.userAvatar, radius: 21.5),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  style: const TextStyle(fontSize: 16, color: AppColors.black),
                  decoration: InputDecoration.collapsed(
                    hintText: "What's in Your Mind?",
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const AppSvg(AppAssets.photos, width: 28, height: 28),
            ],
          ),
        ),
        divider,
        SizedBox(
          height: 210,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              horizontal: AppTheme.screenPadding,
              vertical: 16,
            ),
            itemCount: feedStories.length + 1,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              if (index == 0) return const CreateStoryCard();
              return StoryCard(story: feedStories[index - 1]);
            },
          ),
        ),
        divider,
        ...feedPosts.map((post) => PostWidget(post: post)),
      ],
    );
  }
}
