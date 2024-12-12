import 'package:finance_app/app/add_item/view/add_item.dart';
import 'package:finance_app/app/controller/view/controller_view.dart';
import 'package:finance_app/core/router/route_name.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGeneratedRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.home:
        return MaterialPageRoute(
          builder: (_) => const AppController(),
        );

      case RoutesNames.addScreen:
        return MaterialPageRoute(
          builder: (_) => const AddScreen(),
        );
      /* RoutesNames.register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<RegisterCubit>(
            create: (context) => RegisterCubit(),
            child: const RegisterScreen(),
          ),
        );

      case RoutesNames.home:
        return MaterialPageRoute(
          builder: (_) => const ControlleScreen(),
        );

      case RoutesNames.productInfo:
        return MaterialPageRoute(
          builder: (_) => ProductInfo(product: settings.arguments as Product),
        );

      case RoutesNames.policies:
        return MaterialPageRoute(
          builder: (_) => const Policies(),
        );

      case RoutesNames.updateProfile:
        return MaterialPageRoute(
          builder: (_) => const UpdateProfile(),
        );

      case RoutesNames.search:
        return MaterialPageRoute(
          builder: (_) => const SearchProductScreen(),
        );

      case RoutesNames.faqs:
        return MaterialPageRoute(
          builder: (_) => const FAQS(),
        );

      case RoutesNames.contactUs:
        return MaterialPageRoute(
          builder: (_) => const ContactUs(),
        );

      case RoutesNames.cart:
        return MaterialPageRoute(
          builder: (_) => const CartScreen(),
        );*/
    }

    return null;
  }
}
