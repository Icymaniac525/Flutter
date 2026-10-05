import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ConfirmRegistrationController extends GetxController {
  late String username;
  late String email;
  late String password;
  late String jenisKelamin;
  late String nama_lengkap;
  late String agama;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    username = arguments['username'];
    nama_lengkap = arguments['nama_lengkap'];
    email = arguments['email'];
    password = arguments['password'];
    jenisKelamin = arguments['jenis_kelamin'];
    agama = arguments['agama'];
  }
}
