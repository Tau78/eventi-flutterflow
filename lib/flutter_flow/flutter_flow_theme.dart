import 'package:flutter/material.dart';

class FlutterFlowTheme {
  FlutterFlowTheme._();

  static _FFThemeData of(BuildContext context) => _FFThemeData();
}

class _FFThemeData {
  Color get primary => const Color(0xFF4B39EF);
  Color get secondary => const Color(0xFF39D2C0);
  Color get primaryBackground => const Color(0xFF14181B);
  Color get secondaryBackground => const Color(0xFF1E2429);
  Color get secondaryText => const Color(0xFF95A1AC);

  TextStyle get headlineMedium =>
      const TextStyle(fontSize: 28.0, fontWeight: FontWeight.w600);
  TextStyle get displayMedium =>
      const TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700);
  TextStyle get displaySmall =>
      const TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600);
  TextStyle get titleLarge =>
      const TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600);
  TextStyle get titleMedium =>
      const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500);
  TextStyle get titleSmall =>
      const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500);
  TextStyle get bodyMedium =>
      const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400);
  TextStyle get bodySmall =>
      const TextStyle(fontSize: 12.0, fontWeight: FontWeight.w400);
  TextStyle get labelMedium =>
      const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);
}

extension FlutterFlowTextStyleHelpers on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
  }) {
    return copyWith(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
    );
  }
}
