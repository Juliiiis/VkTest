import 'package:flutter/material.dart';
import 'package:vk/widgets/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:vk/widgets/profile/widgets/media/photo_grid_screen.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({super.key});

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
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
      ),
    );
  }
}
