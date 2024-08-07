import 'package:flutter/material.dart';
import 'package:vk/features//profile/widgets/friends_widget.dart';
import 'package:vk/features/profile/widgets/media/media_widget.dart';
import 'package:vk/features/profile/widgets/user_card_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.blue[50],
      ),
      body: ListView(
        children: const <Widget>[
          UserCardWidget(),
          SizedBox(height: 8),
          FriendsWidget(),
          SizedBox(height: 8),
          MediaWidget(),
        ],
      ),
    );
  }
}
