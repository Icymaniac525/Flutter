import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controllers/confirm_registration_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  ConfirmRegistrationPage({super.key});

  final controller = Get.put(ConfirmRegistrationController());

  static const Color softBluePurple = Color(0xFFF0EEFA);
  static const Color mutedBluePurple = Color(0xFF7B82A8);

  Widget _detailRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(icon, color: mutedBluePurple),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade700),
                ),
                const SizedBox(height: 3),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: softBluePurple,
      appBar: AppBar(
        title: const Text("Confirm Registration"),
        backgroundColor: mutedBluePurple,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Icon(Icons.verified_user, size: 64, color: mutedBluePurple),
          const SizedBox(height: 12),
          const Text(
            "Registration Details",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: mutedBluePurple,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Please review your information",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
          ),
          const SizedBox(height: 24),
          Card(
            color: Colors.white,
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  _detailRow(
                    icon: Icons.person_outline,
                    label: "Username",
                    value: controller.username,
                  ),
                  const Divider(height: 1),
                  _detailRow(
                    icon: Icons.wc,
                    label: "Jenis Kelamin",
                    value: controller.jenisKelamin,
                  ),
                  const Divider(height: 1),
                  _detailRow(
                    icon: Icons.self_improvement,
                    label: "Agama",
                    value: controller.agama,
                  ),
                  const Divider(height: 1),
                  _detailRow(
                    icon: Icons.email_outlined,
                    label: "E-mail",
                    value: controller.email,
                  ),
                  const Divider(height: 1),
                  _detailRow(
                    icon: Icons.lock_outline,
                    label: "Password",
                    value: controller.password,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 52,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: mutedBluePurple,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              onPressed: Get.back,
              icon: const Icon(Icons.check),
              label: const Text("Ok"),
            ),
          ),
        ],
      ),
    );
  }
}
