import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

Widget buildTopSpendingRow() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Top spending",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: AppColors.primaryColor,
            ),
          ),
          Icon(
            Icons.swap_vert,
            color: AppColors.grey,
          )
        ],
      ),
    );
