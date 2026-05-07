import 'package:flutter/material.dart';

class FlutterFlowIconButton extends StatelessWidget {
  const FlutterFlowIconButton({
    super.key,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.buttonSize,
    this.fillColor,
    required this.icon,
    this.onPressed,
  });

  final Color? borderColor;
  final double? borderRadius;
  final double? borderWidth;
  final double? buttonSize;
  final Color? fillColor;
  final Widget icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final size = buttonSize ?? 40.0;
    return SizedBox(
      width: size,
      height: size,
      child: Material(
        color: fillColor ?? Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: borderWidth ?? 1.0,
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
          onTap: onPressed,
          child: Center(child: icon),
        ),
      ),
    );
  }
}
