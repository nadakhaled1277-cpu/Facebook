import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  const AppImage(
    this.path, {
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
  });

  final String path;
  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(path, width: width, height: height, fit: fit);
  }
}

class AppAvatar extends StatelessWidget {
  const AppAvatar(this.path, {super.key, required this.radius});

  final String path;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: AppImage(path, width: radius * 2, height: radius * 2),
    );
  }
}
