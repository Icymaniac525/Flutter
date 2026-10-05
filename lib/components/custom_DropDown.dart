import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String myTitle;
  final String? myValue;
  final List<String> myItems;
  final ValueChanged<String?> onChanged;

  const CustomDropdown({
    super.key,
    required this.myTitle,
    required this.myValue,
    required this.myItems,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: myValue,
      isExpanded: true,
      decoration: InputDecoration(
        labelText: myTitle,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      items: myItems.map((String item) {
        return DropdownMenuItem<String>(value: item, child: Text(item));
      }).toList(),
      onChanged: onChanged,
    );
  }
}
