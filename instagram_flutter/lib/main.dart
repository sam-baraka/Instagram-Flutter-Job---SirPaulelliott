import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_flutter/routes/router.dart';
import 'package:scaled_app/scaled_app.dart';

void main() {
  usePathUrlStrategy();
  runAppScaled(MyApp(), scaleFactor: (deviceSize) {
    const double widthOfDesign = 390;
    if (deviceSize.width < deviceSize.height) {
      return deviceSize.width / widthOfDesign;
    } else {
      return 1;
    }
  });
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: ThemeData(
          useMaterial3: true,
          fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
          primaryColor: const Color(0xFF004AAD),
          scaffoldBackgroundColor: Colors.white),
    );
  }
}
