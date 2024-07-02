import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vk/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:vk/widgets/profile/widgets/media/album_screen.dart';


class PhotoGridScreen extends StatefulWidget {
  const PhotoGridScreen({super.key});

  @override
  State<PhotoGridScreen> createState() => _PhotoGridScreenState();
}

class _PhotoGridScreenState extends State<PhotoGridScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SliverTabBar(),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class SliverTabBar extends StatefulWidget {
  const SliverTabBar({super.key});

  @override
  State<SliverTabBar> createState() => _SliverTabBarState();
}

class _SliverTabBarState extends State<SliverTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: MySliverAppBarDelegate(
              expandedHeight: 80,
            ),
            pinned: true,
          ),
           const SliverAppBar(
             expandedHeight: 10,
            automaticallyImplyLeading: false,
            centerTitle: true,
            flexibleSpace: Align(
              alignment: Alignment.center,
              child: TabBar(
                tabAlignment: TabAlignment.center,
                isScrollable: true,
                tabs: [
                  Tab(text: 'Фото'),
                  Tab(text: 'Альбомы',)
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: const Padding(
                padding: EdgeInsets.all(1.0),
                child: TabBarView(
                  children: [
                    PhotoGidView(),
                    AlbumScreen(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}




class MySliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  MySliverAppBarDelegate({
    required this.expandedHeight,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white.withOpacity(shrinkOffset / expandedHeight),
      child: const Align(
        alignment: Alignment.bottomCenter,
        child: Text(
            'Фотографии',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => expandedHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

class PhotoGidView extends StatefulWidget {
  const PhotoGidView({super.key});

  @override
  State<PhotoGidView> createState() => _PhotoGidViewState();
}

class _PhotoGidViewState extends State<PhotoGidView> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers:[
        SliverGrid(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        delegate: SliverChildBuilderDelegate(
                (BuildContext context, index){
              return Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    color: Colors.blue[100],
                  ),
                  height: 50,
                  width: 50,
                ),
              );
            },
            childCount: 60
        ),
      ),
    ],
    );
  }
}



/*bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0.0),
                child: Container(
                  height: 20.0,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),*/

