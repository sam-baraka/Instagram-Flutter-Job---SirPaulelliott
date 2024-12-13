import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/routes/router.gr.dart';

@RoutePage()
class ResetPasswordSuccess extends StatelessWidget {
  const ResetPasswordSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 600) {
        // Responsive design for larger screens
        return Scaffold(
          backgroundColor: const Color(0xffF8F8F8),
          body: Center(
            child: Container(
              width: constraints.maxWidth * 0.3, // Occupy half the screen width
              padding: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CircleAvatar(
                    radius: 33,
                    child: const Icon(
                      Icons.check,
                      size: 38,
                      color: Colors.white,
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Password has been set successfully',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                    ),
                  ),
                  const SizedBox(height: 30),
                  CupertinoButton(
                    color: Colors.black,
                    onPressed: () {
                      AutoRouter.of(context).push(const LoginRoute());
                    },
                    child: const Text('Continue'),
                  ),
                ],
              ),
            ),
          ),
        );
      } else {
        // Mobile layout
        return Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                 CircleAvatar(
                  radius: 33,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: const Icon(
                    Icons.check,
                    size: 38,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Password has been set successfully',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 23,
                  ),
                ),
                const SizedBox(height: 30),
                CupertinoButton(
                  color: Colors.black,
                  onPressed: () {
                    AutoRouter.of(context).push(const LoginRoute());
                  },
                  child: const Text('Continue'),
                ),
                const Spacer(),
              ],
            ),
          ),
        );
      }
    });
  }
}
