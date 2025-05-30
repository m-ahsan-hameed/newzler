import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:newzler/customWidgets/custom_text_style.dart';

class CustomDropDownButton<T> extends StatelessWidget {
  final List<T> items;
  final T? value;
  final String hintText;
  final void Function(T?) onChange;
  final String Function(T?) itemLabelBuilder;
  final double? width;
  const CustomDropDownButton({
    super.key,
    required this.items,
    this.value,
    required this.hintText,
    required this.onChange,
    required this.itemLabelBuilder,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton2<T>(
      hint: CustomTextStyle(text: hintText, size: 16, fontFamily: "Roboto"),
      items: items.map((T item) {
        return DropdownMenuItem(
          value: item,
          child: CustomTextStyle(
            text: itemLabelBuilder(item),
            size: 16,
            fontFamily: "Roboto",
          ),
        );
      }).toList(),
      onChanged: onChange,
      value: value,
      isExpanded: true,
      underline: Divider(height: 10),
      buttonStyleData: ButtonStyleData(width: width),
    );
  }
}
