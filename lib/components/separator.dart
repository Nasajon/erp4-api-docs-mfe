import 'package:flutter/material.dart';

class MySeparator extends StatelessWidget {
  const MySeparator(
      {Key? key,
      this.height = 1,
      this.color = Colors.black,
      required this.direction})
      : super(key: key);
  final double height;
  final Color color;
  final Axis direction;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 10.0;
        final dashHeight = height;

        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: direction,
          children: List.generate(50, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}
