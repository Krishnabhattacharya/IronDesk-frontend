// import 'package:flutter/material.dart';

// import '../routes/app_routes.dart';

// mixin BaseScreenView {
//   void showSnackbar(String message, {Color? color});

//   void navigateToScreen(AppRoute appRoute, {Map<String, String>? params});
// }

import 'package:irondesk/routes/app_routes.dart';
import 'package:irondesk/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

mixin BaseScreenView<T extends StatefulWidget> on State<T> {
  void showSnackbar(String message, {Color? color}) {
    if (!mounted) return;

    final messenger = ScaffoldMessenger.of(context);

    messenger.hideCurrentSnackBar();

    messenger.showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color ?? color,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params});
  void backNavigation() {
    if (context.canPop()) {
      context.pop();
    } else {
      throw Exception("Can not able to back");
    }
  }

  void showSuccessSnackBar(String message) {
    showSnackbar(message, color: Colors.green);
  }

  void showErrorSnackBar(String message) {
    showSnackbar(message, color: Colors.red);
  }

  void showToast({
    required String message,
    Color? color,
    Color? textColor,
    double? fontSize,
  }) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: color ?? kBlack,
      textColor: textColor ?? kWhite,
      fontSize: fontSize ?? 14.sp,
    );
  }
}
