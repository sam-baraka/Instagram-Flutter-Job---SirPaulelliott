import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:instagram_flutter/routes/router.gr.dart';
import 'package:instagram_flutter/screens/widgets/custom_phone_field.dart';
import 'package:instagram_flutter/screens/widgets/custom_text_field.dart';

@RoutePage()
class SighUpScreen extends StatelessWidget {
  const SighUpScreen({super.key});

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
                  const SizedBox(height: 80),
                  Image.asset(
                    'assets/image.png',
                    height: 60,
                  ),
                  const SizedBox(height: 40),
                  const Center(
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 23,
                      ),
                    ),
                  ),
                  const SizedBox(height: 47),
                  const CustomTextField(name: 'name', hint: 'Name'),
                  const SizedBox(height: 10),
                  const CustomTextField(name: 'email', hint: 'Email'),
                  const SizedBox(height: 10),
                  const CustomPhoneField(name: 'phone', hint: 'Phone'),
                  const SizedBox(height: 10),
                  const CustomTextField(name: 'zip', hint: 'Zip code'),
                  const SizedBox(height: 10),
                  const CustomTextField(name: 'email', hint: 'Username'),
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
                  FormBuilderCheckbox(
                    name: 'check',
                    checkColor: Theme.of(context).primaryColor,
                    activeColor: const Color(0xffF8F8F8),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.grey, width: 0.5),
                        borderRadius: BorderRadius.circular(4)),
                    title: Text.rich(TextSpan(children: [
                      const TextSpan(
                        text: 'I agree to the ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms of Service ',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      TextSpan(
                        text: 'and',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      TextSpan(
                        text: ' BAA',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ])),
                  ),
                  const SizedBox(height: 20),
                  CupertinoButton(
                    color: Colors.black,
                    onPressed: () {
                      AutoRouter.of(context)
                          .push(const AddidionalInformationRoute());
                    },
                    child: const Text('Create an account'),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Text.rich(TextSpan(children: [
                      const TextSpan(
                        text: 'Already a Member? ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign in',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            AutoRouter.of(context).push(const LoginRoute());
                          },
                      ),
                    ])),
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
                  const SizedBox(height: 80),
                  Image.asset(
                    'assets/image.png',
                    height: 60,
                  ),
                  const SizedBox(height: 40),
                  const Center(
                    child: Text(
                      'Create an account',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 23,
                      ),
                    ),
                  ),
                  const SizedBox(height: 47),
                  const CustomTextField(name: 'name', hint: 'Name'),
                  const SizedBox(height: 10),
                  const CustomTextField(name: 'email', hint: 'Email'),
                  const SizedBox(height: 10),
                  const CustomPhoneField(name: 'phone', hint: 'Phone'),
                  const SizedBox(height: 10),
                  const CustomTextField(name: 'zip', hint: 'Zip code'),
                  const SizedBox(height: 10),
                  const CustomTextField(name: 'email', hint: 'Username'),
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
                  FormBuilderCheckbox(
                    name: 'check',
                    checkColor: Theme.of(context).primaryColor,
                    activeColor: const Color(0xffF8F8F8),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.grey, width: 0.5),
                        borderRadius: BorderRadius.circular(4)),
                    title: Text.rich(TextSpan(children: [
                      const TextSpan(
                        text: 'I agree to the ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms of Service ',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    backgroundColor: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Text(
                                            'Terms of Service',
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          const SizedBox(
                                            height: 23,
                                          ),
                                          const Text(
                                            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\n Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          const SizedBox(
                                            height: 23,
                                          ),
                                          const Text(
                                            'Business Associate Agreement',
                                            style: TextStyle(
                                                fontSize: 23,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          const SizedBox(
                                            height: 23,
                                          ),
                                          const Text(
                                            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          const SizedBox(
                                            height: 23,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: MaterialButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    color: Colors.black,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              vertical: 6.0),
                                                      child: Text(
                                                        'Accept',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    )),
                                              ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Expanded(
                                                child: OutlinedButton(
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      'Decline',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    )),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 23,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                      ),
                      TextSpan(
                        text: 'and',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                      TextSpan(
                        text: ' BAA',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ])),
                  ),
                  const SizedBox(height: 20),
                  CupertinoButton(
                    color: Colors.black,
                    onPressed: () {
                      AutoRouter.of(context)
                          .push(const AddidionalInformationRoute());
                    },
                    child: const Text('Create an account'),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: Text.rich(TextSpan(children: [
                      const TextSpan(
                        text: 'Already a Member? ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign in',
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            AutoRouter.of(context).push(const LoginRoute());
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
