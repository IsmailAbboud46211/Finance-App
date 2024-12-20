import 'package:finance_app/core/enum/toast_state.dart';
import 'package:finance_app/core/functions/pick_toast_color.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void customToast({
  required String message,
  required ToastState state,
  required double width,
}) =>
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 5,
      backgroundColor: pickToastColor(state: state),
      textColor: Colors.white,
      fontSize: width / 25,
    );
