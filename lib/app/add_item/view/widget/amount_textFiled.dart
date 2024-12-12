import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class AmountTextField extends StatefulWidget {
  final TextEditingController amountTextFieldController;
  final FocusNode amountFoucsNode;
  const AmountTextField({
    super.key,
    required this.amountTextFieldController,
    required this.amountFoucsNode,
  });

  @override
  State<AmountTextField> createState() => _AmountTextFieldState();
}

class _AmountTextFieldState extends State<AmountTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        keyboardType: TextInputType.number,
        focusNode: widget.amountFoucsNode,
        controller: widget.amountTextFieldController,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'amount',
          labelStyle: TextStyle(fontSize: 17, color: AppColors.primaryColor),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: AppColors.primaryColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: AppColors.primaryColor)),
        ),
      ),
    );
  }
}
