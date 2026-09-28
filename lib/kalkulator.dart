import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controllers/kalkulator_controller.dart';
import 'package:flutter_application_1/components/custom_Button.dart';
import 'package:flutter_application_1/components/custom_TextField.dart';
import 'package:flutter_application_1/components/custom_TextView.dart';
import 'package:get/get.dart';

class CalkulatorPage extends StatelessWidget {
  CalkulatorPage({super.key});

  final KalkulatorController controller = Get.put(KalkulatorController());

  void _hitung(
    BuildContext context,
    void Function(double, double) operasi, {
    bool pembagian = false,
  }) {
    final angka1 = double.tryParse(controller.txtangka1.text);
    final angka2 = double.tryParse(controller.txtangka2.text);

    if (angka1 == null || angka2 == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Masukkan kedua angka terlebih dahulu')),
      );
      return;
    }

    if (pembagian && angka2 == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Angka pembagi tidak boleh nol')),
      );
      return;
    }

    operasi(angka1, angka2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calkulator Page')),
      body: Column(
        children: [
          CustomTextview(
            text: "Welcome to application",
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: 'input number 1',
              txtcontroller: controller.txtangka1,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: 'input number 2',
              txtcontroller: controller.txtangka2,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                text: '+',
                onPressed: () => _hitung(context, controller.tambah),
              ),

              CustomButton(
                text: '-',
                onPressed: () => _hitung(context, controller.kurang),
              ),

              CustomButton(
                text: '*',
                onPressed: () => _hitung(context, controller.kali),
              ),

              CustomButton(
                text: '/',
                onPressed: () =>
                    _hitung(context, controller.bagi, pembagian: true),
              ),
            ],
          ),
          Obx(
            () => CustomTextview(
              text: 'hasil ${controller.hasilHitung.value}',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
