import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class ProfileImg extends StatelessWidget {
  const ProfileImg({Key? key, required this.profileImg, this.pressShowImg, this.pressModifImg, this.showIconModif=false,}) : super(key: key);
  final String profileImg;
  final Function()? pressShowImg;
  final Function()? pressModifImg;
  final bool showIconModif;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          GestureDetector(
            onTap: pressShowImg,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(profileImg),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: pressModifImg,
              child: (showIconModif)?Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset('assets/icons/Camera Icon.svg'),
              ):null,
            ),
          )
        ]
    );
  }
}