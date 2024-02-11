import 'package:flutter/material.dart';
import 'package:islami_sun_c10/ui/utils/app_assets.dart';
import 'package:islami_sun_c10/ui/utils/app_colors.dart';

import '../utils/app_theme.dart';

class AppScaffold extends StatelessWidget {
  final String title;
  final Widget? bottomNavigation;
  final Widget body;
  const AppScaffold({super.key,
    required this.body,
    required this.title,
    this.bottomNavigation});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppAssets.background))),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
          centerTitle: true,
          elevation: 0,
          title: Text(
            title,
            style: AppTheme.appBarTextStyle,
          ),
        ),
        bottomNavigationBar: bottomNavigation,
        body: body,
      ),
    );;
  }
}
