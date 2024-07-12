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
    final screenWith = MediaQuery.of(context).size.width;
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,

      title: Container(
        color: const Color.fromARGB(50, 0, 0, 0),
        margin: screenWith > 650
            ? const EdgeInsets.only(left: 8.0)
            : const EdgeInsets.only(left: 2.0),
        padding: const EdgeInsets.only(left: 8.0),
        width: 300.0,
        child: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: backTo,
            ),
            const Text(
              'Voltar à página anterior',
              style: TextStyle(color: Colors.white, fontSize: 14.0),
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
  Size get preferredSize => const Size.fromHeight(40.0);
}
