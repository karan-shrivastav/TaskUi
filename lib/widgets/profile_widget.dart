import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 230,
      backgroundColor: Color(0xFF84b9ff),
      child: CircleAvatar(
        radius: 130,
        backgroundColor: Color(0xFFafd1ff),
        child: CircleAvatar(
            radius: 65,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 58,
              // backgroundColor: Colors.yellow,
              backgroundImage: NetworkImage(
                  'https://www.shutterstock.com/image-photo/head-shot-handsome-millennial-30s-600nw-1854710668.jpg'),
            )),
      ),
    );
  }
}
