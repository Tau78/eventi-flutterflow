import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

T valueOrDefault<T>(T? value, T defaultValue) => value ?? defaultValue;

void safeSetState(VoidCallback fn) {
  fn();
}

bool responsiveVisibility({
  required BuildContext context,
  bool phone = true,
  bool tablet = true,
  bool tabletLandscape = true,
  bool desktop = true,
}) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return phone;
  }
  if (width < 900) {
    return tablet;
  }
  if (width < 1200) {
    return tabletLandscape;
  }
  return desktop;
}

abstract class FlutterFlowModel<T extends StatefulWidget> {
  void initState(BuildContext context) {}
  void dispose() {}
}

M createModel<M extends FlutterFlowModel<dynamic>>(
  BuildContext context,
  M Function() defaultBuilder,
) {
  return defaultBuilder();
}

extension FlutterFlowListExtensions<T> on List<T> {
  List<T> divide(T divider) {
    if (isEmpty) {
      return <T>[];
    }
    final out = <T>[];
    for (var i = 0; i < length; i++) {
      out.add(this[i]);
      if (i != length - 1) {
        out.add(divider);
      }
    }
    return out;
  }

  List<T> addToStart(T value) => <T>[value, ...this];
  List<T> addToEnd(T value) => <T>[...this, value];
}

extension GoRouterPrepareAuthEvent on GoRouter {
  void prepareAuthEvent() {}
}
