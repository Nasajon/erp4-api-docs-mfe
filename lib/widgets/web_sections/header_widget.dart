import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.network(
        'https://nasajon-dev.s3.us-west-2.amazonaws.com/gednasajon/logo/Nasajon.png',
        width: 200,
        color: Colors.white,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
