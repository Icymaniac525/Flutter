import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  final String myTitle;
  final List<String> options;
  final String? myValue;
  final ValueChanged<String> onChanged;

  const CustomSwitch({
    super.key,
    required this.myTitle,
    required this.options,
    required this.myValue,
    required this.onChanged,
  }) : assert(options.length == 2 || options.length == 3);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(myTitle),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          children: options.map((option) {
            return ChoiceChip(
              label: Text(option),
              selected: myValue == option,
              onSelected: (selected) {
                if (selected) {
                  onChanged(option);
                }
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
