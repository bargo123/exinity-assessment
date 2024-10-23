import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.width,
    this.height,
    this.hasBorder = false,
    this.hasBorderColor = false,
    this.borderColor,
    this.backgroundColor,
    this.borderRadius = const BorderRadius.all(Radius.circular(10)),
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.hasShadow = true,
    this.shadowOpacity = 0.1,
    this.blurRadius = 2,
    this.offsetdx = 1,
    this.offsetdy = 0,
    this.child,
    this.spreadRadius = 1,
    this.alignment,
    this.borderWidth = 0.1,
  });

  final double? width;
  final double? height;
  final bool hasBorder;
  final bool hasBorderColor;
  final Color? backgroundColor;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final bool hasShadow;
  final double shadowOpacity;
  final double blurRadius;
  final Widget? child;
  final double offsetdx;
  final double offsetdy;
  final double spreadRadius;
  final AlignmentGeometry? alignment;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white, // Using Flutter Colors here
        borderRadius: borderRadius,
        border: hasBorder
            ? Border.all(
                color: hasBorderColor
                    ? borderColor!
                    : Colors.grey[
                        300]!, // Default border color using Flutter Colors
                width: borderWidth,
              )
            : Border.all(
                color: Colors.transparent,
                width: 0,
              ),
        boxShadow: hasShadow
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(shadowOpacity),
                  spreadRadius: spreadRadius,
                  blurRadius: blurRadius,
                  offset: Offset(offsetdx, offsetdy),
                )
              ]
            : [],
      ),
      child: child,
    );
  }
}
