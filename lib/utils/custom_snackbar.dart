import 'utils.dart';

void customSnackBar(
  BuildContext context,
  String message, {
  Color color = kSnackbarTxtColor,
  Color bgColor = kGreen,
  bool defaultAction = false,
  SnackBarAction? snackbarAction,
  Duration duration = const Duration(seconds: 2),
}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
  final SnackBar snackBar = SnackBar(
    backgroundColor: bgColor,
    duration: duration,
    content: Text(
      message,
      style: TextStyle(color: color),
    ),
    action: defaultAction
        ? SnackBarAction(
            label: 'Close',
            textColor: kDarkGrey,
            onPressed: () {
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
          )
        : snackbarAction,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void customHideSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
}
