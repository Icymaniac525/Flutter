import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  // Variable yang di butuhkan
  final String myHint;
  final TextEditingController txtcontroller;
  // dll

  const CustomTextfield({
    super.key,
    required this.myHint,
    required this.txtcontroller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtcontroller,
      decoration: InputDecoration(
        hintText: myHint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
