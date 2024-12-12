import 'package:finance_app/app/add_item/data/add_item_data.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

Widget moneyItem({required AddItem moneyData, required int index}) => Dismissible(
      onDismissed: (direction) => moneyData.delete(),
      key: UniqueKey(),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            "assets/images/${moneyData.type}.png",
            height: 100,
          ),
        ),
        title: Text(
          moneyData.explaine,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          "Date : ${moneyData.addDate.year}/${moneyData.addDate.month}/${moneyData.addDate.day}",
        ),
        trailing: Text(
          moneyData.how == "Expand" ? " -\$ ${moneyData.amount}" : "\$ ${moneyData.amount}",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: moneyData.how == "Expand" ? AppColors.red : AppColors.green,
          ),
        ),
      ),
    );
