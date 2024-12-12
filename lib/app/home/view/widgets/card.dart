import 'package:finance_app/app/home/data/home_data.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

Widget buildCard({required BuildContext context}) => Positioned(
    top: 160,
    left: 50,
    child: Container(
      width: context.width / 1.3,
      height: context.height / 4,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).brightness == Brightness.dark ? AppColors.softDark : AppColors.grey,
            offset: const Offset(0, 6),
            blurRadius: 12,
          )
        ],
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.primaryColor
            : AppColors.secondryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (context.height / 50).ph,
            //* Fisrt line
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total balance",
                  style: TextStyle(
                    color: AppColors.softWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                  color: AppColors.softWhite,
                )
              ],
            ),
            (context.height / 200).ph,
            //* second line
            Text(
              "\$ ${getTotalAmount()}",
              style: TextStyle(
                color: AppColors.softWhite,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            (context.height / 50).ph,
            //* third line
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: AppColors.primaryColor,
                      child: const Icon(Icons.arrow_downward),
                    ),
                    (context.width * 0.025).pw,
                    Text(
                      "Income",
                      style: TextStyle(
                        color: AppColors.softWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: AppColors.primaryColor,
                      child: const Icon(Icons.arrow_upward),
                    ),
                    (context.width * 0.025).pw,
                    Text(
                      "Expenses",
                      style: TextStyle(
                        color: AppColors.softWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    )
                  ],
                )
              ],
            ),
            (context.height / 75).ph,
            //* fourth line
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ ${getIncomeAmount()}",
                    style: TextStyle(
                      color: AppColors.softWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "\$ ${getExpandedAmount()}",
                    style: TextStyle(
                      color: AppColors.softWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
