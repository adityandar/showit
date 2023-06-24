import 'package:flutter/material.dart';
import 'package:showit/dependencies/dependencies.dart';
import 'package:showit/settings/settings.dart';

@RoutePage()
class AuthLoginPage extends StatelessWidget {
  const AuthLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: FloatingActionButton(
        onPressed: () {
          context.router.pushAndPopUntil(
            MainRoute(),
            predicate: (_) => false,
          );
        },
      ),
    );
  }
}
