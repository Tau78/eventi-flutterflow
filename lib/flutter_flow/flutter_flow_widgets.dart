import 'package:flutter/material.dart';

class FFButtonOptions {
  const FFButtonOptions({
    this.width,
    this.height,
    this.padding,
    this.iconPadding,
    this.color,
    this.textStyle,
    this.elevation,
    this.borderSide,
    this.borderRadius,
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? iconPadding;
  final Color? color;
  final TextStyle? textStyle;
  final double? elevation;
  final BorderSide? borderSide;
  final BorderRadius? borderRadius;
}

class FFButtonWidget extends StatelessWidget {
  const FFButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    required this.options,
  });

  final VoidCallback? onPressed;
  final String text;
  final FFButtonOptions options;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: options.width,
      height: options.height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: options.color,
          elevation: options.elevation,
          textStyle: options.textStyle,
          padding: options.padding,
          shape: RoundedRectangleBorder(
            side: options.borderSide ?? BorderSide.none,
            borderRadius: options.borderRadius ?? BorderRadius.circular(8.0),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
