import 'package:finance_app/app_wrapper.dart';
import 'package:finance_app/core/database/boxes_names.dart';
import 'package:finance_app/core/database/hive_db.dart';
import 'package:finance_app/core/database/keys_names.dart';
import 'package:finance_app/core/router/app_router.dart';
import 'package:finance_app/core/themes/dark_theme.dart';
import 'package:finance_app/core/themes/light_theme.dart';
import 'package:finance_app/logic_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

//* global var to access to the DB from anyWhere
HiveDB hiveDB = HiveDB();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //* init the local DB
  await hiveDB.initDB();
  //* Router
  AppRouter appRouter = AppRouter();
  //* Cubit Observer
  Bloc.observer = MyBlocObserver();

  runApp(
    FinanceApp(
      appRouter: appRouter,
    ),
  );
}

class FinanceApp extends StatelessWidget {
  final AppRouter appRouter;
  const FinanceApp({required this.appRouter, super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box(BoxesNames.settings).listenable(),
      builder: ((BuildContext context, Box box, Widget? child) {
        final isDarkMode = box.get(
          KeysNames.darkMode,
          defaultValue: false,
        );
        return MaterialApp(
          title: 'Finance App',
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.onGeneratedRoutes,
          theme: isDarkMode ? DarkTheme.setDarkMode() : LightTheme.setLightMode(),
          home: const AppWrapper(),
        );
      }),
    );
  }
}
