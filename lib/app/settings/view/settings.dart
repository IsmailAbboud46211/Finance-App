import 'package:finance_app/app/settings/data/settings_data.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          //* background container
          Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: context.height / 3,
            decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //* person icon
                CircleAvatar(
                  backgroundColor: AppColors.grey,
                  radius: 50,
                  child: Icon(
                    Icons.person_2_outlined,
                    size: context.width / 5,
                  ),
                ),
                (context.height / 40).ph,
                //* text
                Text(
                  "Welcome Dear USER",
                  style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 25,
            ),
            child: ListView.separated(
              itemBuilder: (context, index) => settingsItems[index],
              separatorBuilder: (context, index) => const Divider(),
              itemCount: settingsItems.length,
            ),
          )),
          const Padding(
            padding: EdgeInsets.only(bottom: 50.0),
            child: Text("Finance app version 1.0"),
          )
        ],
      )),
    );
  }
}
