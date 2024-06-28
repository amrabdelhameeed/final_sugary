import 'package:flutter/material.dart';
import 'package:locat/app_router.dart';
import 'package:locat/core/constants/app_routes.dart';

class SingleSignInDialog {
  static show(BuildContext context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [Text("The app only available on single device.")],
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("ok"))
          ],
        );
      },
    ).then((value) async {
      await Future.delayed(
        Duration(milliseconds: 200),
        () {
          AppRouter.router.pushReplacementNamed(AppRoutes.signIn);
        },
      );
    });
  }
}
