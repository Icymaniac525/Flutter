import 'package:flutter_application_1/pages/confirm_registration_page.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  static const String registration = '/registration';
  static const String confirmRegistration = '/confirm-registration';
  // dll

  // Kita masukkan ke dalam myPages Array
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    // dll
  ];
}
