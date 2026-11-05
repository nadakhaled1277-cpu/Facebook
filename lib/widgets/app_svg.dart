import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvg extends StatelessWidget {
  const AppSvg(
    this.path, {
    super.key,
    this.width,
    this.height,
    this.color,
  });

  final String path;
  final double? width;
  final double? height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    if (path.toLowerCase().endsWith('.png')) {
      return Image.asset(
        path,
        width: width,
        height: height,
        fit: BoxFit.contain,
        color: color,
      );
    }

    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      colorFilter:
          color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
    );
  }
}
