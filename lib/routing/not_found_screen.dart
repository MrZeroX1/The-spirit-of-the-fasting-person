import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/app_sizes.dart';
import 'app_router.dart';

/// Simple not found screen used for 404 errors (page not found on web)
class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("error 404",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 30,
                )),
            gapH24,
            ElevatedButton(
              style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all(const EdgeInsets.all(16.0)),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.grey),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              onPressed: () {
                context.goNamed(AppRoute.prayers.name);
              },
              child: const Text("sorry"),
            )
          ],
        ),
      ),
    );
  }
}
