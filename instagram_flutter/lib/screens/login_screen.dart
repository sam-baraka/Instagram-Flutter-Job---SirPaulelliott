import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/routes/router.gr.dart';
import 'package:instagram_flutter/screens/widgets/custom_text_field.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  const SizedBox(height: 40),
                  Image.asset(
                    'assets/image.png',
                    height: 80,
                  ),
                  const SizedBox(height: 40),
                  const Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const CustomTextField(name: 'email', hint: 'Email'),
                  const SizedBox(height: 20),
                  const CustomTextField(
                    name: 'password',
                    hint: 'Password',
                    suffix: Icon(
                      Icons.remove_red_eye,
                      color: Color(0xff707680),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: 'Forgot Password?',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              AutoRouter.of(context)
                                  .push(const ForgetPasswordRoute());
                            },
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(height: 30),
                  CupertinoButton(
                    color: Colors.black,
                    onPressed: () {
                      AutoRouter.of(context).push(const HomeRoute());
                    },
                    child: const Text('Sign in'),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Text.rich(
                      TextSpan(children: [
                        const TextSpan(
                          text: 'New User? ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Create an account',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              AutoRouter.of(context).push(const SighUpRoute());
                            },
                        ),
                      ]),
                    ),
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 110),
                  Image.asset(
                    'assets/image.png',
                    height: 60,
                  ),
                  const SizedBox(height: 70),
                  const Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 23,
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  const CustomTextField(name: 'email', hint: 'Email'),
                  const SizedBox(height: 10),
                  const CustomTextField(
                    name: 'password',
                    hint: 'Password',
                    suffix: Icon(
                      Icons.remove_red_eye,
                      color: Color(0xff707680),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Spacer(),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                          text: 'Forgot Password?',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              AutoRouter.of(context)
                                  .push(const ForgetPasswordRoute());
                            },
                        ),
                      ])),
                    ],
                  ),
                  const SizedBox(height: 20),
                  CupertinoButton(
                    color: Colors.black,
                    onPressed: () {
                      AutoRouter.of(context).push(const HomeRoute());
                    },
                    child: const Text('Sign in'),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Text.rich(TextSpan(children: [
                      const TextSpan(
                        text: 'New User? ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Create an account',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            AutoRouter.of(context).push(const SighUpRoute());
                          },
                      ),
                    ])),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    });
  }
}
