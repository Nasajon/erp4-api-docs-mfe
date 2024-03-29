import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWith = MediaQuery.of(context).size.width;
    return AppBar(
      title: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1830.0),
          child: Row(
            children: [
              Image.network(
                'https://nasajon-dev.s3.us-west-2.amazonaws.com/gednasajon/logo/Nasajon.png',
                width: screenWith > 650.0 ? 200.0 : 150.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
