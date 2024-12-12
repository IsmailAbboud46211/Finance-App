import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

Widget buildExpensseButton() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 120,
            height: 40,
            decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Expense",
                  style: TextStyle(
                    color: AppColors.grey,
                  ),
                ),
                Icon(
                  Icons.arrow_downward_sharp,
                  color: AppColors.grey,
                )
              ],
            ),
          ),
        ],
      ),
    );
