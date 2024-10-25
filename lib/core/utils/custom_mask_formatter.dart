import 'package:flutter/services.dart';

class CustomMaskFormatter extends TextInputFormatter {
  final String mask;
  final String separator;

  CustomMaskFormatter({required this.mask, this.separator = '-'});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final text = newValue.text;

    String digitsOnly = text.replaceAll(RegExp(r'[^0-9]'), '');

    StringBuffer formattedText = StringBuffer();
    int index = 0;

    for (int i = 0; i < mask.length; i++) {
      if (index >= digitsOnly.length) break;

      if (mask[i] == '#') {
        formattedText.write(digitsOnly[index]);
        index++;
      } else {
        formattedText.write(mask[i]);
      }
    }

    return TextEditingValue(
      text: formattedText.toString(),
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}
