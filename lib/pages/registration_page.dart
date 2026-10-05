import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_Switch.dart';
import 'package:flutter_application_1/components/custom_DropDown.dart';
import 'package:flutter_application_1/components/custom_TextField.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  static const Color softGreen = Color(0xFFE8F5E9);
  static const Color darkGreen = Color(0xFF1B5E20);

  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  final TextEditingController txtNoWA = TextEditingController();
  final TextEditingController txtNamaLengkap = TextEditingController();
  String? jenisKelamin;
  String? agama;

  static const List<String> daftarAgama = [
    'Islam',
    'Kristen Protestan',
    'Katolik',
    'Hindu',
    'Buddha',
    'Konghucu',
  ];

  @override
  void dispose() {
    txtUsername.dispose();
    txtNamaLengkap.dispose();
    txtNoWA.dispose();
    txtEmail.dispose();
    txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Page"),
        backgroundColor: darkGreen,
        foregroundColor: Colors.white,
      ),
      backgroundColor: softGreen,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 520),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Table(
                border: TableBorder.all(color: darkGreen, width: 5),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    decoration: const BoxDecoration(color: softGreen),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: CustomTextfield(
                          myHint: "Input Username",
                          txtcontroller: txtUsername,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: const BoxDecoration(color: softGreen),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: CustomTextfield(
                          myHint: "Input Nama Lengkap",
                          txtcontroller: txtNamaLengkap,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: const BoxDecoration(color: softGreen),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: CustomTextfield(
                          myHint: "Input No WA",
                          txtcontroller: txtNoWA,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: const BoxDecoration(color: softGreen),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: CustomSwitch(
                          myTitle: "Jenis kelamin",
                          options: const ["Laki-laki", "Perempuan", "Lainnya"],
                          myValue: jenisKelamin,
                          onChanged: (value) =>
                              setState(() => jenisKelamin = value),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: const BoxDecoration(color: softGreen),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: CustomTextfield(
                          myHint: "Input E-mail",
                          txtcontroller: txtEmail,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: const BoxDecoration(color: softGreen),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: CustomTextfield(
                          myHint: "Input Password",
                          txtcontroller: txtPassword,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: const BoxDecoration(color: softGreen),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: CustomDropdown(
                          myTitle: "Agama",
                          myValue: agama,
                          myItems: daftarAgama,
                          onChanged: (value) => setState(() => agama = value),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    decoration: const BoxDecoration(color: softGreen),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: darkGreen,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Get.toNamed(
                              Routes.confirmRegistration,
                              arguments: {
                                'username': txtUsername.text,
                                'nama_lengkap': txtNamaLengkap.text,
                                'noWA': txtNoWA.text,
                                'email': txtEmail.text,
                                'password': txtPassword.text,
                                'jenis_kelamin': jenisKelamin,
                                'agama': agama,
                              },
                            );
                          },
                          child: const Text("Send"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
