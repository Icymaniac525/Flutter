import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  // Add your controller logic here

  final txtangka1 = TextEditingController();
  final txtangka2 = TextEditingController();
  var hasilHitung = 0.0.obs; //obd digunakan untuk update ke UI page

  @override
  void onClose() {
    txtangka1.dispose();
    txtangka2.dispose();
    super.onClose();
  }

  void tambah(double angka1, double angka2) {
    double hasil = angka1 + angka2;
    hasilHitung.value = hasil;
    //snackbar
    Get.snackbar(
      'Hasil Penjumlahan',
      'Hasil: $hasil',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );
  }

  void kurang(double angka1, double angka2) {
    double hasil = angka1 - angka2;
    hasilHitung.value = hasil;
    Get.snackbar(
      'Hasil Pengurangan',
      'Hasil: $hasil',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.blue,
      colorText: Colors.white,
    );
  }

  void kali(double angka1, double angka2) {
    hasilHitung.value = angka1 * angka2;
    Get.snackbar(
      'Hasil Perkalian',
      'Hasil: ${hasilHitung.value}',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.orange,
      colorText: Colors.white,
    );
  }

  void bagi(double angka1, double angka2) {
    hasilHitung.value = angka1 / angka2;
    Get.snackbar(
      'Hasil Pembagian',
      'Hasil: ${hasilHitung.value}',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  }
}
