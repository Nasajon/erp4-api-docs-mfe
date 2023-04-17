// import 'package:flutter/material.dart';
// import 'package:flutter_global_dependencies/flutter_global_dependencies.dart';

// class ThemeStore extends Store<Exception, ThemeData> {
//   ThemeStore()
//       : super(
//           ThemeData.light(),
//         );

//   final ThemeData lightTheme = ThemeData.light();
//   final ThemeData darkTheme = ThemeData.dark();

//   void toggleTheme() {
//     state == lightTheme ? null : update(darkTheme);
//   }

//   @override
//   Future destroy() {
//     // TODO: implement destroy
//     throw UnimplementedError();
//   }

//   @override
//   Disposer observer(
//       {void Function(ThemeData state)? onState,
//       void Function(bool isLoading)? onLoading,
//       void Function(Exception error)? onError}) {
//     // TODO: implement observer
//     throw UnimplementedError();
//   }
// }
