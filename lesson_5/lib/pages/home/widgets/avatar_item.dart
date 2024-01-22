import 'package:flutter/material.dart';

class AvatarItem extends StatelessWidget {
  const AvatarItem({
    Key? key,
    required this.avatar,
    this.isLive = false,
  }) : super(key: key);

  final String avatar;

  final bool isLive;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 64,
          height: 64,
          margin: const EdgeInsets.only(bottom: 4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: isLive
                  ? [
                      const Color(0xFFE20337),
                      const Color(0xFFC60188),
                      const Color(0xFF7700C3)
                    ]
                  : [
                      const Color(0xFFFBC147),
                      const Color(0xFFD91A46),
                      const Color(0xFFA60F93),
                    ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
          child: Center(
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  avatar,
                  width: 60,
                  height: 60,
                ),
              ),
            ),
          ),
        ),
        if (isLive)
          Positioned(
            bottom: 0,
            left: 18,
            child: Container(
              width: 26,
              height: 16,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFC90083),
                      Color(0xFFD22463),
                      Color(0xFFE10038)
                    ],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(3)),
              child: const Center(
                child: Text(
                  'LIVE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
