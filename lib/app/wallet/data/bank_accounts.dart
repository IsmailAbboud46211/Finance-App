import 'package:finance_app/app/wallet/data/model/bank_card.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

List<BankCard> bankAccounts = [
  BankCard(
    name: "Citi Bank",
    icon: Icons.wallet,
    backgroundColor: AppColors.primaryColor,
    iconColor: AppColors.softWhite,
  ),
  BankCard(
    name: "PNC Bank",
    icon: Icons.money,
    backgroundColor: AppColors.secondryColor,
    iconColor: AppColors.softWhite,
  ),
  BankCard(
    name: "HSBC Bank",
    icon: Icons.wallet_travel_outlined,
    backgroundColor: AppColors.fourthColor,
    iconColor: AppColors.primaryColor,
  )
];
