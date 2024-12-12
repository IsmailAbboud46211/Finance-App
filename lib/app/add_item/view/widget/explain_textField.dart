import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class ExplainTextField extends StatefulWidget {
  final TextEditingController expalinTextEditingController;
  final FocusNode explaineFoucsNode;
  const ExplainTextField({
    super.key,
    required this.expalinTextEditingController,
    required this.explaineFoucsNode,
  });

  @override
  State<ExplainTextField> createState() => _ExplainTextFieldState();
}

class _ExplainTextFieldState extends State<ExplainTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        focusNode: widget.explaineFoucsNode,
        controller: widget.expalinTextEditingController,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          labelText: 'explain',
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
