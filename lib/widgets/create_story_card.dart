import 'package:flutter/material.dart';

import '../core/app_assets.dart';
import '../core/app_colors.dart';
import 'app_image.dart';
class CreateStoryCard extends StatelessWidget {
  const CreateStoryCard({super.key});

  static const double _bottomHeight = 54;
  static const double _buttonSize = 26;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 112,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              color: const Color(0xFFD9D9D9),
              child: Column(
                children: [
                  const Expanded(
                    child: SizedBox.expand(
                      child: AppImage(AppAssets.createStoryImage),
                    ),
                  ),
                  Container(
                    height: _bottomHeight,
                    width: double.infinity,
                    color: AppColors.white,
                    padding: const EdgeInsets.only(top: 15),
                    child: const Text(
                      'Create a Story',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: _bottomHeight - _buttonSize / 2,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: _buttonSize,
                height: _buttonSize,
                decoration: BoxDecoration(
                  color: AppColors.blue,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.white, width: 2),
                ),
                child: const Icon(Icons.add, size: 16, color: AppColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
