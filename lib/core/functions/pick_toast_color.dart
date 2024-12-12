import 'package:finance_app/core/enum/toast_state.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

Color pickToastColor({required ToastState state}) {
  Color backgroundColor;
  switch (state) {
    case ToastState.SUCCESS:
      backgroundColor = AppColors.green;
      break;
    case ToastState.ERROR:
      backgroundColor = AppColors.red;
      break;
    case ToastState.WORNING:
      backgroundColor = AppColors.grey;
      break;
    case ToastState.LODING:
      backgroundColor = AppColors.softGrey;
      break;
  }
  return backgroundColor;
}
