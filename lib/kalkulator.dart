import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_Button.dart';
import 'package:flutter_application_1/components/custom_TextField.dart';
import 'package:flutter_application_1/components/custom_TextView.dart';

class CalkulatorPage extends StatefulWidget {
  const CalkulatorPage({super.key});

  @override
  State<CalkulatorPage> createState() => _CalkulatorPageState();
}

class _CalkulatorPageState extends State<CalkulatorPage> {
  final TextEditingController number1Controller = TextEditingController();
  final TextEditingController number2Controller = TextEditingController();

  @override
  void dispose() {
    number1Controller.dispose();
    number2Controller.dispose();
    super.dispose();
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
              txtcontroller: number1Controller,
            ),
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: CustomTextfield(
              myHint: 'input number 2',
              txtcontroller: number2Controller,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton(
                text: '+',
                onPressed: () {},
              ),

              CustomButton(
                text: '-',
                onPressed: () {},
              ),

              CustomButton(
                text: '*',
                onPressed: () {},
              ),

              CustomButton(
                text: '/',
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
