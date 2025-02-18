import 'package:flutter/material.dart';
import 'package:spotify/common/common.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        labelColor: context.isDarkMode ? Colors.white : Colors.black,
        padding: const EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 20,
        ),
        tabAlignment: TabAlignment.start,
        tabs: const [
          Text(
            'News',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Video',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Artists',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Podcast',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
