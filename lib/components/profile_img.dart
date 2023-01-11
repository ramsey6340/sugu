import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class ProfileImg extends StatelessWidget {
  const ProfileImg({Key? key, required this.profileImg, required this.pressShowImg, required this.pressModifImg,}) : super(key: key);
  final String profileImg;
  final Function pressShowImg;
  final Function pressModifImg;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          GestureDetector(
            onTap: pressShowImg as void Function(),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(profileImg),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: pressModifImg as void Function(),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset('assets/icons/Camera Icon.svg'),
              ),
            ),
          )
        ]
    );
  }
}