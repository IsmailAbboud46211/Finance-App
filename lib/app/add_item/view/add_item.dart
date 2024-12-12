import 'package:finance_app/app/add_item/data/add_item_data.dart';
import 'package:finance_app/app/add_item/view/widget/add_button.dart';
import 'package:finance_app/app/add_item/view/widget/amount_textFiled.dart';
import 'package:finance_app/app/add_item/view/widget/background_container.dart';
import 'package:finance_app/app/add_item/view/widget/date_picker.dart';
import 'package:finance_app/app/add_item/view/widget/explain_textField.dart';
import 'package:finance_app/core/database/boxes_names.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final box = Hive.box<AddItem>(BoxesNames.addItemData);
  DateTime date = DateTime.now();
  String? selctedItem;
  String? selctedItemOfMoney;
  final TextEditingController expalinTextEditingController = TextEditingController();
  FocusNode explaineFoucsNode = FocusNode();
  final TextEditingController amountTextFieldController = TextEditingController();
  FocusNode amountFoucsNode = FocusNode();
  final List<String> types = ['food', "Transfer", "Transportation", "Education"];
  final List<String> typesOfMoney = [
    'Income',
    "Expand",
  ];
  @override
  void initState() {
    super.initState();
    explaineFoucsNode.addListener(() {
      setState(() {});
    });
    amountFoucsNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark ? Colors.white10 : AppColors.softWhite,
      body: SafeArea(
        child: Stack(children: [
          //* backgroundContainer
          buildBackgroundContainer(context: context),
          //* main Container
          Positioned(
              top: 120,
              left: 65,
              child: Container(
                  width: context.width / 1.5,
                  height: context.height / 1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.softDark
                        : AppColors.fourthColor,
                  ),
                  child: Column(
                    children: [
                      (context.height / 25).ph,
                      //* types menu
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          child: DropdownButton<String>(
                            value: selctedItem,
                            onChanged: ((value) {
                              setState(() {
                                selctedItem = value!;
                              });
                            }),
                            items: types
                                .map((element) => DropdownMenuItem(
                                      value: element,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 40,
                                              child: Image.asset('assets/images/$element.png'),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              element,
                                              style: const TextStyle(fontSize: 18),
                                            )
                                          ],
                                        ),
                                      ),
                                    ))
                                .toList(),
                            selectedItemBuilder: (BuildContext context) => types
                                .map((element) => Row(
                                      children: [
                                        SizedBox(
                                          width: 42,
                                          child: Image.asset('assets/images/$element.png'),
                                        ),
                                        const SizedBox(width: 5),
                                        Text(element)
                                      ],
                                    ))
                                .toList(),
                            hint: Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Text(
                                'Type',
                                style: TextStyle(color: AppColors.primaryColor),
                              ),
                            ),
                            dropdownColor: Theme.of(context).brightness == Brightness.dark
                                ? AppColors.softDark
                                : AppColors.fourthColor,
                            isExpanded: true,
                            underline: Container(),
                          ),
                        ),
                      ),
                      (context.height / 25).ph,
                      //* Eplain Text Field
                      ExplainTextField(
                        expalinTextEditingController: expalinTextEditingController,
                        explaineFoucsNode: explaineFoucsNode,
                      ),
                      (context.height / 25).ph,
                      //* Amount Text Field
                      AmountTextField(
                        amountTextFieldController: amountTextFieldController,
                        amountFoucsNode: amountFoucsNode,
                      ),
                      (context.height / 25).ph,
                      //* types of meony menu
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 2,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          child: DropdownButton<String>(
                            value: selctedItemOfMoney,
                            onChanged: ((value) {
                              setState(() {
                                selctedItemOfMoney = value!;
                              });
                            }),
                            items: typesOfMoney
                                .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: Container(
                                        alignment: Alignment.center,
                                        child: Row(
                                          children: [
                                            Text(
                                              e,
                                              style: const TextStyle(fontSize: 18),
                                            )
                                          ],
                                        ),
                                      ),
                                    ))
                                .toList(),
                            selectedItemBuilder: (BuildContext context) => typesOfMoney
                                .map((e) => Row(
                                      children: [Text(e)],
                                    ))
                                .toList(),
                            hint: Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Text(
                                'How',
                                style: TextStyle(color: AppColors.primaryColor),
                              ),
                            ),
                            dropdownColor: Theme.of(context).brightness == Brightness.dark
                                ? AppColors.softDark
                                : AppColors.fourthColor,
                            isExpanded: true,
                            underline: Container(),
                          ),
                        ),
                      ),
                      (context.height / 25).ph,
                      //* Date pickers
                      DatePicker(date: date),
                      const Spacer(),
                      //* Add button,
                      AddButton(
                        amountTextFieldController: amountTextFieldController,
                        expalinTextEditingController: expalinTextEditingController,
                        selectedItem: selctedItem,
                        selectedTypeOfMoney: selctedItemOfMoney,
                        date: date,
                        box: box,
                      ),
                    ],
                  )))
        ]),
      ),
    );
  }
}
