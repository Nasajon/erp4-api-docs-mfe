import 'package:flutter/material.dart';

class MopeBlankSpace extends StatelessWidget {
  const MopeBlankSpace({super.key, required this.flex});

  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: SizedBox(),
    );
  }
}
