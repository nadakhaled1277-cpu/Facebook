import '../core/app_assets.dart';

class FeedStory {
  const FeedStory({required this.storyImage, required this.userImage});

  final String storyImage;
  final String userImage;
}

class FeedPost {
  const FeedPost({
    required this.userName,
    required this.userImage,
    required this.timeAgo,
    required this.postImage,
  });

  final String userName;
  final String userImage;
  final String timeAgo;
  final String postImage;
}

const List<FeedStory> feedStories = [
  FeedStory(storyImage: AppAssets.story1, userImage: AppAssets.story1User),
  FeedStory(storyImage: AppAssets.story2, userImage: AppAssets.story2User),
  FeedStory(storyImage: AppAssets.story3, userImage: AppAssets.story3User),
];

const List<FeedPost> feedPosts = [
  FeedPost(
    userName: 'Route',
    userImage: AppAssets.routeAvatar,
    timeAgo: '8h .',
    postImage: AppAssets.postImage,
  ),
  FeedPost(
    userName: 'Route',
    userImage: AppAssets.routeAvatar,
    timeAgo: '8h .',
    postImage: AppAssets.postImage,
  ),
];
