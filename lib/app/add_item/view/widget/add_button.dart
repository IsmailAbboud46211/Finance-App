// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:finance_app/app/add_item/data/add_item_data.dart';
import 'package:finance_app/core/extension/routing_extenstion.dart';
import 'package:flutter/material.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/themes/app_color.dart';

// ignore: must_be_immutable
class AddButton extends StatelessWidget {
  final String? selectedItem;
  final String? selectedTypeOfMoney;
  final TextEditingController expalinTextEditingController;
  final TextEditingController amountTextFieldController;
  // ignore: prefer_typing_uninitialized_variables
  var box;
  DateTime date;
  AddButton({
    Key? key,
    this.selectedItem,
    this.selectedTypeOfMoney,
    required this.expalinTextEditingController,
    required this.amountTextFieldController,
    required this.date,
    required this.box,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var add = AddItem(
          type: selectedItem!,
          explaine: expalinTextEditingController.text,
          amount: amountTextFieldController.text,
          how: selectedTypeOfMoney!,
          addDate: date,
        );
        box.add(add);
        context.pop();
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Container(
          alignment: Alignment.center,
          width: context.width / 4,
          height: context.width / 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColors.primaryColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.add,
                color: AppColors.softWhite,
              ),
              Text(
                "add",
                style: TextStyle(
                  color: AppColors.softWhite,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
