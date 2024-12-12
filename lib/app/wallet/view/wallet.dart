import 'package:finance_app/app/wallet/data/bank_accounts.dart';
import 'package:finance_app/app/wallet/view/widgets/build_texts_column.dart';
import 'package:finance_app/app/wallet/view/widgets/wallet_icon.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
          top: context.width / 5,
          left: context.width / 15,
          right: context.width / 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Send Money",
              style: TextStyle(
                fontSize: context.width / 10,
                color: AppColors.primaryColor,
              ),
            ),
            (context.width / 30).ph,
            Text(
              "Add your back account",
              style: TextStyle(
                fontSize: context.width / 15,
                color: AppColors.primaryColor,
              ),
            ),
            (context.width / 25).ph,
            //* card
            Center(
              child: Container(
                width: double.infinity,
                height: context.height / 4,
                decoration: BoxDecoration(
                    color: AppColors.fourthColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: AppColors.primaryColor,
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    left: 25,
                    right: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //* text
                      buildTextsColumn(context: context),
                      (context.width / 25).pw,
                      //* Icon
                      buildWalletIcon(
                        context: context,
                        widgetIcon: Icons.wallet,
                        backgroundColor: AppColors.thirdColor,
                        iconColor: AppColors.softWhite,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            (context.width / 20).ph,
            Text(
              "Select the bank",
              style: TextStyle(
                fontSize: context.width / 20,
                color: AppColors.primaryColor,
              ),
            ),
            (context.width / 20).ph,

            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bankAccounts.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Column(
                    children: [
                      buildWalletIcon(
                        context: context,
                        widgetIcon: bankAccounts[index].icon,
                        backgroundColor: bankAccounts[index].backgroundColor,
                        iconColor: bankAccounts[index].iconColor,
                      ),
                      (context.width / 20).ph,
                      Text(
                        bankAccounts[index].name,
                        style: TextStyle(color: AppColors.primaryColor),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
