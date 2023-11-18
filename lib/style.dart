import 'package:flutter/material.dart';

class CustomDropdownStyle {
  static const double padding = 5.0;

  static BoxDecoration dropdownDecoration() {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: const Color.fromARGB(255, 173, 238, 121).withOpacity(0.5),
          spreadRadius: 0.5,
          blurRadius: 0.5,
          offset: const Offset(0, 0.5),
        ),
      ],
      border: Border.all(
        color: Colors.grey,
        style: BorderStyle.solid,
        width: 0.80,
      ),
    );
  }

  static DropdownButtonHideUnderline dropdownButton({
    required bool isExpanded,
    required String value,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        isExpanded: isExpanded,
        elevation: 0,
        value: value,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: items.map((String item) {
          return DropdownMenuItem(value: item, child: Text(item));
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}

