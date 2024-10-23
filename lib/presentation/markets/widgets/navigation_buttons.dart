import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigationButtons extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Function(int index) onTapLeft;
  final Function(int index) onTapRight;

  const NavigationButtons(
      {Key? key,
      required this.currentPage,
      required this.totalPages,
      required this.onTapLeft,
      required this.onTapRight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(
            Icons.arrow_left,
            size: 60,
          ),
          onPressed: currentPage > 0
              ? () {
                  onTapLeft(currentPage - 1);
                }
              : null,
        ),
        IconButton(
          icon: const Icon(
            Icons.arrow_right,
            size: 60,
          ),
          onPressed: currentPage < totalPages - 1
              ? () {
                  onTapRight(currentPage + 1);
                }
              : null,
        ),
      ],
    );
  }
}
