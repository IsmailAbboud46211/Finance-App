import 'package:finance_app/app/add_item/data/add_item_data.dart';
import 'package:finance_app/app/home/view/widgets/card.dart';
import 'package:finance_app/app/home/view/widgets/head_part.dart';
import 'package:finance_app/app/home/view/widgets/money_item.dart';
import 'package:finance_app/core/database/boxes_names.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: prefer_typing_uninitialized_variables
  var history;
  final box = Hive.box<AddItem>(BoxesNames.addItemData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: box.listenable(),
        builder: (context, value, child) => Column(
          children: [
            //* the head
            SizedBox(
              height: context.height / 2,
              child: Stack(
                children: [
                  //* Head part
                  buildHeadPart(context: context),
                  //* The card
                  buildCard(context: context),
                ],
              ),
            ),
            //* the label
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Transactions History",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "see all",
                    style: TextStyle(
                      color: AppColors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  )
                ],
              ),
            ),
            //* List of Items
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  history = box.values.toList()[index];
                  return moneyItem(
                    moneyData: history,
                    index: index,
                  );
                },
                itemCount: box.length,
              ),
            )
          ],
        ),
      )),
    );
  }
}
