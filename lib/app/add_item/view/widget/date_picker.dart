import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DatePicker extends StatefulWidget {
  DateTime date;
  DatePicker({super.key, required this.date});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        alignment: Alignment.bottomLeft,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 2,
              color: AppColors.primaryColor,
            )),
        child: TextButton(
          onPressed: () async {
            DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2020),
              lastDate: DateTime(2100),
            );
            if (newDate == null) return;
            setState(() {
              widget.date = newDate;
            });
          },
          child: Text(
            "Date :  ${widget.date.year} / ${widget.date.month} / ${widget.date.day}",
            style: TextStyle(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
