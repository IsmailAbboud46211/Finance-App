import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/routing_extenstion.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:finance_app/core/router/route_name.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

Widget buildBackgroundContainer({required BuildContext context}) => Column(
      children: [
        Container(
          width: double.infinity,
          height: context.height / 3,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              )),
          child: Column(
            children: [
              (context.height / 25).ph,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => context.go(routeName: RoutesNames.home),
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColors.softWhite,
                      ),
                    ),
                    Text(
                      "Adding",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: AppColors.softWhite,
                      ),
                    ),
                    Icon(
                      Icons.attach_file_outlined,
                      color: AppColors.softWhite,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
