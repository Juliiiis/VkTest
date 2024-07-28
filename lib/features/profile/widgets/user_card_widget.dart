import 'package:flutter/material.dart';
import 'package:vk/features/profile/widgets/publication_button.dart';

class UserCardWidget extends StatefulWidget {
  const UserCardWidget({super.key});

  @override
  State<UserCardWidget> createState() => _UserCardWidgetState();
}

class _UserCardWidgetState extends State<UserCardWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 252,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 50,
            child: Container(
              height: 202,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: const Column(
                children: [
                  SizedBox(height: 66),
                  Text(
                    'Юлия Дёмина',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Juli про фитнес и здоровье',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: PublicationButton(),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue[100],
            ),
          ),
        ],
      ),
    );
  }
}
