import 'package:flutter/material.dart';

class PublicationButton extends StatefulWidget {
  const PublicationButton({super.key});

  @override
  State<PublicationButton> createState() => _PublicationButtonState();
}

class _PublicationButtonState extends State<PublicationButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _showButtonSheet(context);
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.grey[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add_circle_outline,
            color: Colors.blue.shade500,
          ),
          const SizedBox(width: 10),
          Text('Опубликовать',
            style: TextStyle(
              color: Colors.blue.shade500,
            ),
          ),
        ],
      ),
    );
  }

  void _showButtonSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context){
          return const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.photo_filter),
                title: Text('История'),
              ),
              ListTile(
                leading: Icon(Icons.create),
                title: Text('Запись'),
              ),
              ListTile(
                leading: Icon(Icons.crop_original),
                title: Text('Фото'),
              ),
              ListTile(
                leading: Icon(Icons.whatshot),
                title: Text('Клип'),
              ),
              ListTile(
                leading: Icon(Icons.radio_button_checked),
                title: Text('Трансляция'),
              ),
            ],
          );
        }
    );
  }
}
