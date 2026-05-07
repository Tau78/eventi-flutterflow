import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class _FakeAuthManager {
  Future<Object?> signInWithEmail(
    BuildContext context,
    String email,
    String password,
  ) async {
    return Object();
  }

  Future<Object?> createAccountWithEmail(
    BuildContext context,
    String email,
    String password,
  ) async {
    return Object();
  }
}

final authManager = _FakeAuthManager();

extension AuthNavigationExtensions on BuildContext {
  void goNamedAuth(String routeName, bool mounted) {
    if (!mounted) {
      return;
    }
    goNamed(routeName);
  }
}
