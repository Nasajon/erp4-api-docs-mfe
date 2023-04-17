import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ReturnAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ReturnAppBar({
    Key? key,
    required this.backTo,
  }) : super(key: key);

  final VoidCallback backTo;

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;
    return AppBar(
      automaticallyImplyLeading: false,

      title: Container(
        color: const Color.fromARGB(50, 0, 0, 0),
        margin: const EdgeInsets.only(left: 110),
        padding: const EdgeInsets.only(left: 8),
        width: 300,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: backTo,
            ),
            const Text(
              'Voltar à página anterior',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
      // leadingWidth: 25,
      backgroundColor: setColor(brightness),
    );
  }

  Color setColor(brightness) {
    return brightness == Brightness.light
        ? AnaColors.darkBlue
        : const Color.fromARGB(255, 69, 110, 161);
  }

  @override
  Size get preferredSize => Size.fromHeight(40);
}
