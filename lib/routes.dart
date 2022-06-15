import 'package:flutter/material.dart';

class AppRoute {
  static void push(BuildContext context, Widget page) {
    Navigator.of(context).push(
      PageRouteBuilder(
          // Base Navigation Builder and replacement of
          // MaterialPageRoute
          pageBuilder: ((context, animation, secondaryAnimation) {
            // Return the target Screen
            return page;
          }),

          // Duration for Navigation push
          transitionDuration: const Duration(seconds: 1),

          // Duration for Navigation pop
          reverseTransitionDuration: const Duration(seconds: 1),

          // Transition Animation
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Future reference , available transitions

            // SlideTransition
            // ScaleTransition
            // RotationTransition
            // SizeTransition
            // PositionedTransition
            // RelativePositionedTransition
            // DecoratedBoxTransition
            // AlignTransition
            // DefaultTextStyleTransition

            return ScaleTransition(
              scale: animation,
              alignment: Alignment.center,
              child: child,
            );
          }),
    );
  }
}
