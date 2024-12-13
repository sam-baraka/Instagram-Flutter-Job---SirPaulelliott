import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:instagram_flutter/routes/router.gr.dart';
import 'package:instagram_flutter/screens/widgets/custom_phone_field.dart';
import 'package:instagram_flutter/screens/widgets/custom_text_field.dart';

@RoutePage()
class AddidionalInformationPage extends StatelessWidget {
  const AddidionalInformationPage({super.key});

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
                                    const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      radius: 17,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            CupertinoIcons.chevron_back,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Additional Information',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const CustomTextField(name: 'name', hint: 'Job Title'),
                  const SizedBox(height: 10),
                  const CustomTextField(name: 'email', hint: 'Business Name'),
                  const SizedBox(height: 10),
                  const CustomTextField(
                      name: 'email', hint: 'Type of Provider'),
                  const SizedBox(height: 20),
                  CupertinoButton(
                    color: Colors.black,
                    onPressed: () {
                      AutoRouter.of(context).push(const HomeRoute());
                    },
                    child: const Text('Submit'),
                  ),
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 120),
                  const Text(
                    'Additional Information',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                    ),
                  ),
                  const SizedBox(height: 47),
                  const CustomTextField(name: 'name', hint: 'Job Title'),
                  const SizedBox(height: 10),
                  const CustomTextField(name: 'email', hint: 'Business Name'),
                  const SizedBox(height: 10),
                  const CustomTextField(
                      name: 'email', hint: 'Type of Provider'),
                  const SizedBox(height: 20),
                  CupertinoButton(
                    color: Colors.black,
                    onPressed: () {
                      AutoRouter.of(context).push(const HomeRoute());
                    },
                    child: const Text('Submit'),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        );
      }
    });
  }
}
