import 'package:flutter/material.dart';
import 'package:vk/widgets/profile/widgets/publication_button.dart';

const double coverHeight = 100;
const double profileHeight = 50;

class ProfileWidget extends StatefulWidget {
   const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.blue[50],
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          ProfileInfo(),
        ],
      ),
    );
  }
}

class CoverImageWidget extends StatelessWidget {
  const CoverImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      width: double.infinity,
      height: coverHeight,
    );
  }
}


class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: profileHeight,
      backgroundColor: Colors.blue[100],
    );
  }
}


class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  final double top = coverHeight - profileHeight;
  final double bottom = profileHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        const CoverImageWidget(),
        Positioned(
          top: top + 50,
          child: const NameContainerWidget(),
        ),
        Positioned(
          top: top,
          child: const AvatarWidget(),
        ),
        FriendsWidget(),
      ],
    );
  }
}


class NameContainerWidget extends StatefulWidget {
  const NameContainerWidget({super.key});

  @override
  State<NameContainerWidget> createState() => _NameContainerWidgetState();
}

class _NameContainerWidgetState extends State<NameContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 384,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )
      ),
      child: const Column(
        children: [
          SizedBox(height: 60),
          Text(
            'Юлия Дёмина',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
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
          SizedBox(height: 8),
          PublicationButton(),
        ],
      ),
    );
  }
}


class FriendsWidget extends StatefulWidget {
  const FriendsWidget({super.key});

  @override
  State<FriendsWidget> createState() => _FriendsWidgetState();
}

class _FriendsWidgetState extends State<FriendsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
    );
  }
}

