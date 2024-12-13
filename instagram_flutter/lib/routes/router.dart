import 'package:auto_route/auto_route.dart';
import 'package:instagram_flutter/routes/router.gr.dart';
import 'package:instagram_flutter/screens/reset_password_page.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, path: '/login', initial: true),
        AutoRoute(page: SighUpRoute.page, path: '/create-account'),
        AutoRoute(page: ForgetPasswordRoute.page, path: '/forget-password'),
        AutoRoute(page: VerificationCodeRoute.page, path: '/verification-code'),
        AutoRoute(page: ResetPasswordRoute.page, path: '/reset-password'),
        AutoRoute(
            page: ResetPasswordSuccess.page, path: '/reset-password-success'),
        AutoRoute(page: HomeRoute.page, path: '/home'),
        AutoRoute(page: ChatRoute.page, path: '/chat'),
        AutoRoute(
            page: AddidionalInformationRoute.page,
            path: '/additional-information'),
      ];
}
