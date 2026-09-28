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
  }

  void kurang(double angka1, double angka2) {
    hasilHitung.value = angka1 - angka2;
  }

  void kali(double angka1, double angka2) {
    hasilHitung.value = angka1 * angka2;
  }

  void bagi(double angka1, double angka2) {
    hasilHitung.value = angka1 / angka2;
  }
}
