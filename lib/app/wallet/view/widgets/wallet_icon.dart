import 'package:finance_app/core/extension/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildWalletIcon({
  required BuildContext context,
  required IconData widgetIcon,
  required Color backgroundColor,
  required Color iconColor,
}) =>
    Container(
      alignment: Alignment.center,
      width: context.width / 6,
      height: context.height / 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      child: Icon(
        widgetIcon,
        color: iconColor,
        size: 50,
      ),
    );
