import 'package:circular_notched_fab/smooth_circular_notched_shape.dart';
import 'package:flutter/material.dart';
class CustomBottomNavigationBar extends StatelessWidget {
  final List<Widget> children;
  const CustomBottomNavigationBar({required this.children, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 10,
      notchMargin: 10,
      shape: const SmoothCircularNotchedShape(),
      child: Container(
        color: Colors.transparent,
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}
