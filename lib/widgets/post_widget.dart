import 'package:flutter/material.dart';

import '../core/app_assets.dart';
import '../core/app_colors.dart';
import '../core/app_theme.dart';
import '../data/feed_data.dart';
import 'app_image.dart';
import 'app_svg.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key, required this.post});

  final FeedPost post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.black)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppTheme.screenPadding),
            child: Row(
              children: [
                AppAvatar(post.userImage, radius: 26.5),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(post.userName, style: textTheme.titleMedium),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          post.timeAgo,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.gray,
                          ),
                        ),
                        const SizedBox(width: 1),
                        const Icon(
                          Icons.public,
                          size: 12,
                          color: AppColors.gray,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const AppSvg(
                  AppAssets.more,
                  width: 22,
                  height: 6,
                  color: AppColors.black,
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          AppImage(
            post.postImage,
            width: double.infinity,
            height: 271,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppTheme.screenPadding),
            child: Row(
              children: [
                _ActionIcon(Icons.favorite_border),
                SizedBox(width: 8),
                _ActionIcon(Icons.chat_bubble_outline),
                SizedBox(width: 8),
                _ActionIcon(Icons.send_outlined),
                Spacer(),
                _ActionIcon(Icons.bookmark_border),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class _ActionIcon extends StatelessWidget {
  const _ActionIcon(this.icon);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: Icon(icon, size: 24, color: AppColors.black),
    );
  }
}
