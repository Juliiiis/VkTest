import 'package:flutter/material.dart';
import 'package:vk/widgets/profile/widgets/media/photo_table.dart';

class MediaWidget extends StatefulWidget {
  const MediaWidget({super.key});

  @override
  State<MediaWidget> createState() => _MediaWidgetState();
}

class _MediaWidgetState extends State<MediaWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      height: 340,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
                children: [
                  TextButton.icon(
                      onPressed: () {},
                      label: Text('Фото',
                      style: TextStyle(color: Colors.grey[400])),
                    icon: Icon(Icons.crop_original, color: Colors.grey[400]),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text('Видео',
                      style: TextStyle(color: Colors.grey[400])),
                    icon:  Icon(Icons.slideshow, color: Colors.grey[400]),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text('Музыка',
                      style: TextStyle(color: Colors.grey[400])),
                    icon:  Icon(Icons.music_note, color: Colors.grey[400]),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text( 'Альбомы',
                      style: TextStyle(color: Colors.grey[400])),
                    icon:  Icon(Icons.photo_library, color: Colors.grey[400]),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text( 'Клипы',
                      style: TextStyle(color: Colors.grey[400])),
                    icon:  Icon(Icons.whatshot, color: Colors.grey[400]),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label: Text( 'Сюжеты',
                      style: TextStyle(color: Colors.grey[400])),
                    icon:  Icon(Icons.crop_original, color: Colors.grey[400]),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    label:  Text('Статьи',
                      style: TextStyle(color: Colors.grey[400])),
                    icon: Icon(Icons.crop_original, color: Colors.grey[400]),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon:  const Icon(Icons.settings),
                    color: Colors.grey[400],
                  ),
                ],
            ),
          ),
          const GridWidget(),
          const SizedBox( height: 10),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('photo_grid_screen');
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Показать все',
                  style: TextStyle(
                  fontWeight: FontWeight.w500,
                    color: Colors.blue)),
                Icon(Icons.chevron_right, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




