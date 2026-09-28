import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_Button.dart';
import 'package:flutter_application_1/components/custom_TextField.dart';
import 'package:flutter_application_1/components/custom_TextView.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Column(
        children: [
          CustomTextview(
            text: "Welcome to application" + statusLogin,
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "Username",
              txtcontroller: txtUsername,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: "Password",
              txtcontroller: txtPassword,
            ),
          ),

          CustomButton(
            text: 'Login',
            onPressed: () {
              setState(() {
                if (txtUsername.text == 'admin' &&
                    txtPassword.text == 'admin') {
                  statusLogin = 'Success';
                } else {
                  statusLogin = 'Failed';
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
