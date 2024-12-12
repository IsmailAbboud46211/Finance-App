import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildTextsColumn({required BuildContext context}) => Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Why  to add bank account ?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.primaryColor,
            ),
          ),
          (context.width / 50).ph,
          Text(
            "Without adding  yout bank ",
            style: TextStyle(
              color: AppColors.primaryColor,
            ),
          ),
          Text(
            "account, you are not able to",
            style: TextStyle(
              color: AppColors.primaryColor,
            ),
          ),
          Text(
            "send money ",
            style: TextStyle(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
