import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

Widget buildHeadPart({required BuildContext context}) => Column(
      children: [
        //* the parent container
        Container(
          width: double.infinity,
          height: context.height / 3,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          child: Stack(
            children: [
              //* Notifications Icon
              Positioned(
                  top: 35,
                  left: 350,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Container(
                      width: 40,
                      height: 40,
                      color: AppColors.secondryColor,
                      child: Icon(
                        Icons.notification_add,
                        color: AppColors.softWhite,
                      ),
                    ),
                  )),
              //* The top text
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello",
                      style: TextStyle(color: AppColors.secondryColor),
                    ),
                    Text(
                      "Dear user",
                      style: TextStyle(color: AppColors.secondryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
