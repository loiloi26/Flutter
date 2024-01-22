import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFAFAFA),
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: SvgPicture.asset(
          'assets/icons/camera.svg',
          width: 24,
          fit: BoxFit.fitWidth,
        ),
      ),
      leadingWidth: 36,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 6),
        child: SvgPicture.asset(
          'assets/images/instagram_logo.svg',
          width: 105,
          fit: BoxFit.fitWidth,
        ),
      ),
      actions: [
        SvgPicture.asset(
          'assets/icons/igtv.svg',
          width: 24,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          width: 18,
        ),
        SvgPicture.asset(
          'assets/icons/messenger.svg',
          width: 23,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          width: 12,
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.5),
        child: Container(
          color: const Color(0x1A000000),
          height: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
