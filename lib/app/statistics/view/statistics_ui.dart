import 'package:finance_app/app/add_item/data/add_item_data.dart';
import 'package:finance_app/app/statistics/data/statistics_data.dart';
import 'package:finance_app/app/statistics/view/widgets/chart.dart';
import 'package:finance_app/app/statistics/view/widgets/exponse_button.dart';
import 'package:finance_app/app/statistics/view/widgets/top_spending_row.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

import '../../home/view/widgets/money_item.dart';

class StatisticsUi extends StatefulWidget {
  const StatisticsUi({super.key});

  @override
  State<StatisticsUi> createState() => _StatisticsUiState();
}

List time = ["Day", "Week", "Month", "Year"];
List dateItems = [
  todayItems(),
  weekItems(),
  monthItems(),
  yearItems(),
];
List<AddItem> items = [];
int currentIndex = 0;
ValueNotifier valueNotifier = ValueNotifier(0);

class _StatisticsUiState extends State<StatisticsUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: valueNotifier,
        builder: (context, value, child) {
          items = dateItems[value];
          return Column(
            children: [
              (context.width / 10).ph,
              //* the title
              Center(
                  child: Text(
                "Statistics",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColors.primaryColor,
                ),
              )),
              (context.width / 14).ph,
              //* date buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(
                      4,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                            valueNotifier.value = index;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == index ? AppColors.primaryColor : AppColors.softWhite,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            time[index],
                            style: TextStyle(
                              color: AppColors.secondryColor,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              (context.width / 14).ph,
              //* button
              buildExpensseButton(),
              //* chart
              Chart(
                index: currentIndex,
              ),
              (context.width / 14).ph,
              //* row
              buildTopSpendingRow(),
              //* List of money
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return moneyItem(
                      moneyData: items[index],
                      index: index,
                    );
                  },
                  itemCount: items.length,
                ),
              )
            ],
          );
        },
      )),
    );
  }
}
