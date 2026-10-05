import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ConfirmRegistrationController extends GetxController {
  late String username;
  late String email;
  late String password;
  late String jenisKelamin;
  late String namaLengkap;
  late String agama;
  late String noWA;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    username = arguments?['username']?.toString() ?? 'Belum diisi';
    namaLengkap = arguments?['nama_lengkap']?.toString() ?? 'Belum diisi';
    email = arguments?['email']?.toString() ?? 'Belum diisi';
    password = arguments?['password']?.toString() ?? 'Belum diisi';
    jenisKelamin =
        arguments?['jenis_kelamin']?.toString() ?? 'Belum dipilih';
    agama = arguments?['agama']?.toString() ?? 'Belum dipilih';
    noWA = arguments?['noWA']?.toString() ?? 'Belum diisi';
  }
}
