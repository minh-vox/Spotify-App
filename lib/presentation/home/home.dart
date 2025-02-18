import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/common.dart';
import 'package:spotify/presentation/pre.dart';

import '../../resource/resource.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          Assets.icons.spotifyIcon.path,
          height: 40,
        ),
        hideBack: true,
        action: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
            size: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const NewAlbumWidget(),
            TabBarWidget(
              tabController: _tabController,
            ),
          ],
        ),
      ),
    );
  }
}
