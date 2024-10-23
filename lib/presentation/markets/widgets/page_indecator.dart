import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageIndicator extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int index) onTap;

  const PageIndicator(
      {super.key,
      required this.currentPage,
      required this.totalPages,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPages, (index) {
        return GestureDetector(
          onTap: () {
            if (index != currentPage) {
              onTap(index);
            }
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: index == currentPage ? Colors.blue : Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
        );
      }),
    );
  }
}
