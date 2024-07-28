import 'package:flutter/material.dart';



class FriendsWidget extends StatefulWidget {
  const FriendsWidget({super.key});

  @override
  State<FriendsWidget> createState() => _FriendsWidgetState();
}

class _FriendsWidgetState extends State<FriendsWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _goToFriendsScreen();
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,
        ),
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                  '119 друзей',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 64,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: <Widget> [
                    Positioned(
                      left: 40,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.blue.shade100,
                      ),
                    ),
                    const Positioned(
                      left: 24,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Positioned(
                      left: 20,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.blue.shade100,
                      ),
                    ),
                    const Positioned(
                      left: 4,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Positioned(
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.blue.shade100,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _goToFriendsScreen(){
    Navigator.of(context).pushNamed('/friends_screen');
  }

}