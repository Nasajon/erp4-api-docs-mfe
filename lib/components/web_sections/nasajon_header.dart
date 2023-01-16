import 'package:flutter/material.dart';

import 'package:site_documentacao_api/constants/colors.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: 225.0),
        child: Image.network(
          'https://nasajon-dev.s3.us-west-2.amazonaws.com/gednasajon/logo/Nasajon.png',
          color: nsj_colors_backgroung_primary,
          width: 200,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
