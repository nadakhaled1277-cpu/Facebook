import 'package:flutter/material.dart';

import '../core/app_assets.dart';
import '../core/app_colors.dart';
import '../widgets/app_image.dart';
import '../widgets/app_svg.dart';
import '../widgets/feed_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const AppSvg(AppAssets.facebookName, height: 24),
          actions: const [
            _AppBarAction(asset: AppAssets.plus, size: 26),
            _AppBarAction(asset: AppAssets.search, size: 22),
            _AppBarAction(asset: AppAssets.messenger, size: 22),
            SizedBox(width: 8),
          ],
          bottom: const TabBar(
            indicatorColor: AppColors.blue,
            labelColor: AppColors.blue,
            unselectedLabelColor: AppColors.gray,
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: AppColors.gray,
            dividerHeight: 1,
            tabs: [
              Tab(icon: _TabIcon(Icons.home_filled)),
              Tab(icon: _TabIcon(Icons.ondemand_video_outlined)),
              Tab(icon: _TabIcon(Icons.storefront_outlined)),
              Tab(icon: _TabIcon(Icons.account_circle_outlined)),
              Tab(icon: _TabIcon(Icons.notifications_none_outlined)),
              Tab(icon: AppAvatar(AppAssets.userAvatar, radius: 15.5)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FeedTab(),
            SizedBox.shrink(),
            SizedBox.shrink(),
            SizedBox.shrink(),
            SizedBox.shrink(),
            SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}

class _AppBarAction extends StatelessWidget {
  const _AppBarAction({required this.asset, required this.size});

  final String asset;
  final double size;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: AppSvg(asset, width: size, height: size),
    );
  }
}

class _TabIcon extends StatelessWidget {
  const _TabIcon(this.icon);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final color = IconTheme.of(context).color ?? AppColors.gray;
    return Icon(icon, size: 26, color: color);
  }
}
