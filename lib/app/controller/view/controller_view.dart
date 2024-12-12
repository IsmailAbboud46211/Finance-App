import 'package:finance_app/app/home/view/home_ui.dart';
import 'package:finance_app/app/settings/view/settings.dart';
import 'package:finance_app/app/statistics/view/statistics_ui.dart';
import 'package:finance_app/app/wallet/view/wallet.dart';
import 'package:finance_app/core/extension/routing_extenstion.dart';
import 'package:finance_app/core/router/route_name.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class AppController extends StatefulWidget {
  const AppController({Key? key}) : super(key: key);

  @override
  State<AppController> createState() => _AppControllerState();
}

class _AppControllerState extends State<AppController> {
  int indexColor = 0;
  List screensList = [
    const Home(),
    const StatisticsUi(),
    const WalletScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList[indexColor],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.go(routeName: RoutesNames.addScreen);
        },
        // ignore: sort_child_properties_last
        child: const Icon(Icons.add),
        backgroundColor: AppColors.primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    indexColor = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: indexColor == 0 ? AppColors.primaryColor : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    indexColor = 1;
                  });
                },
                child: Icon(
                  Icons.bar_chart_outlined,
                  size: 30,
                  color: indexColor == 1 ? AppColors.primaryColor : Colors.grey,
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    indexColor = 2;
                  });
                },
                child: Icon(
                  Icons.account_balance_wallet_outlined,
                  size: 30,
                  color: indexColor == 2 ? AppColors.primaryColor : Colors.grey,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    indexColor = 3;
                  });
                },
                child: Icon(
                  Icons.settings,
                  size: 30,
                  color: indexColor == 3 ? AppColors.primaryColor : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
