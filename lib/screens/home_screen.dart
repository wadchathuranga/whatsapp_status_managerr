import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import './image_screen.dart';
import './video_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: const Text('Save Status'),
          bottom: const TabBar(
            labelColor: AppColors.secondary,
            indicatorColor: AppColors.secondary,
            unselectedLabelColor: AppColors.whiteColor,
            indicatorWeight: 3,
            labelPadding: EdgeInsets.all(15),
            tabs: [
              Text('Images'),
              Text('Videos'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ImageScreen(),
            // Text('Videos'),
            VideoScreen(),
          ],
        ),
      ),
    );
  }
}
