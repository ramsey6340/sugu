import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class ProfileImg extends StatelessWidget {
  const ProfileImg({Key? key, required this.profileImg,}) : super(key: key);
  final String profileImg;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          CircleAvatar(
            radius: 50,
            child: Image.asset(profileImg),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset('assets/icons/Camera Icon.svg'),
            ),
          )
        ]
    );
  }
}