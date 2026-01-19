import 'utils.dart';

class AppThemes {
  AppThemes._();

  static String font1 = "SourceSansPro";
  static String font2 = "SourceSansPro";

  //main color
  static const Color _lightPrimaryColor = kDodgerBlue;

  //Background Colors
  static const Color _lightBackgroundColor = kLightBgColor;
  static const Color _lightBackgroundAppBarColor = _lightPrimaryColor;
  static const Color _lightBackgroundSecondaryColor = kWhite;
  static const Color _lightBackgroundAlertColor = kGreen;
  static const Color _lightBackgroundActionTextColor = kGrey;

  //Text Colors
  static const Color _lightTextColor = kBlack;

  //Border Color

  //Icon Color
  static const Color _lightIconColor = kNevada;

  //form input colors
  static const Color _lightBorderActiveColor = _darkBackgroundColor;

  // static const Color _darkBorderActiveColor = _lightBackgroundColor;

  static const Color _lightBorderErrorColor = kBrinkPink;

  //constants color range for dark theme
  static const Color _darkPrimaryColor = kDodgerBlue;

  //Background Colors
  static const Color _darkBackgroundColor = kDarkBgColor;
  static const Color _darkBackgroundAppBarColor = _darkPrimaryColor;
  static const Color _darkBackgroundSecondaryColor =
      Color.fromRGBO(0, 0, 0, .6);
  static const Color _darkBackgroundAlertColor = kBlackPearl;
  static const Color _darkBackgroundActionTextColor = kWhite;

  //Text Colors
  static const Color _darkTextColor = kWhite;

  //Border Color

  //Icon Color
  static const Color _darkIconColor = kNevada;

  static const Color _darkInputFillColor = _darkBackgroundSecondaryColor;
  static const Color _darkBorderActiveColor = _lightBackgroundColor;
  static const Color _darkBorderErrorColor = kBrinkPink;

  //text theme for light theme
  static const TextTheme _lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 20.0,
      color: _lightTextColor,
      fontFamily: "SourceSansPro",
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      color: _lightTextColor,
      fontFamily: "SourceSansPro",
    ),
    bodyMedium:
        TextStyle(fontSize: 14.0, color: kGrey, fontFamily: "SourceSansPro"),
    displaySmall: TextStyle(
      fontSize: 16,
      color: _darkTextColor,
      fontFamily: "SourceSansPro",
    ),
    labelLarge: TextStyle(
      fontSize: 15.0,
      color: _lightTextColor,
      fontWeight: FontWeight.w600,
      fontFamily: "SourceSansPro",
    ),
    titleLarge: TextStyle(
      fontSize: 16.0,
      color: _lightTextColor,
      fontFamily: "SourceSansPro",
    ),
    titleMedium: TextStyle(
      fontSize: 16.0,
      color: _lightTextColor,
      fontFamily: "SourceSansPro",
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      color: _lightBackgroundAppBarColor,
      fontFamily: "SourceSansPro",
    ),
  );

  //the light theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    fontFamily: "SourceSansPro",
    scaffoldBackgroundColor: _lightBackgroundColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _lightPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      color: _lightBackgroundAppBarColor,
      iconTheme: const IconThemeData(color: _lightTextColor),
      toolbarTextStyle: _lightTextTheme.bodyMedium,
      titleTextStyle: _lightTextTheme.titleLarge,
    ),
    colorScheme: const ColorScheme.light(
      primary: kBlack,

      // secondary: _lightSecondaryColor,
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: _lightBackgroundAlertColor,
      actionTextColor: _lightBackgroundActionTextColor,
    ),
    iconTheme: const IconThemeData(
      color: _lightIconColor,
    ),
    popupMenuTheme:
        const PopupMenuThemeData(color: _lightBackgroundAppBarColor),
    textTheme: _lightTextTheme,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      buttonColor: _lightPrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    unselectedWidgetColor: _lightPrimaryColor,
    inputDecorationTheme: const InputDecorationTheme(
      //prefixStyle: TextStyle(color: _lightIconColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      fillColor: _lightBackgroundSecondaryColor,
      //focusColor: _lightBorderActiveColor,
    ),
    bottomAppBarTheme:
        const BottomAppBarThemeData(color: kBottomNavLightBgColor),
  );

  static const TextTheme _darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 20.0,
      color: _darkTextColor,
      fontFamily: "SourceSansPro",
    ),
    bodyLarge: TextStyle(
      fontSize: 16.0,
      color: _darkTextColor,
      fontFamily: "SourceSansPro",
    ),
    bodyMedium:
        TextStyle(fontSize: 14.0, color: kGrey, fontFamily: "SourceSansPro"),
    displaySmall: TextStyle(
      fontSize: 16,
      color: _lightTextColor,
      fontFamily: "SourceSansPro",
    ),
    labelLarge: TextStyle(
      fontSize: 15.0,
      color: _darkTextColor,
      fontWeight: FontWeight.w600,
      fontFamily: "SourceSansPro",
    ),
    titleLarge: TextStyle(
      fontSize: 16.0,
      color: _darkTextColor,
      fontFamily: "SourceSansPro",
    ),
    titleMedium: TextStyle(
      fontSize: 16.0,
      color: _darkTextColor,
      fontFamily: "SourceSansPro",
    ),
    bodySmall: TextStyle(
      fontSize: 12.0,
      color: _darkBackgroundAppBarColor,
      fontFamily: "SourceSansPro",
    ),
  );

  //the dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    cardColor: kWhite,
    // cardTheme: CardTheme
    cardTheme: CardThemeData(
      color: kWhite,
      surfaceTintColor: kWhite,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    fontFamily: font1,
    scaffoldBackgroundColor: _darkBackgroundColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _darkPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      color: _darkBackgroundAppBarColor,
      iconTheme: const IconThemeData(color: _darkTextColor),
      toolbarTextStyle: _darkTextTheme.bodyMedium,
      titleTextStyle: _darkTextTheme.titleLarge,
    ),
    snackBarTheme: const SnackBarThemeData(
      contentTextStyle: TextStyle(color: kBlack),
      backgroundColor: _darkBackgroundAlertColor,
      actionTextColor: _darkBackgroundActionTextColor,
    ),
    iconTheme: const IconThemeData(
      color: _darkIconColor, //_darkIconColor,
    ),
    popupMenuTheme: const PopupMenuThemeData(color: _darkBackgroundAppBarColor),
    textTheme: _darkTextTheme,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      buttonColor: _darkPrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    unselectedWidgetColor: _darkPrimaryColor,
    inputDecorationTheme: const InputDecorationTheme(
      prefixStyle:
          TextStyle(color: _darkIconColor, fontFamily: "SourceSansPro"),
      //labelStyle: TextStyle(color: nevada),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      fillColor: _darkInputFillColor,
      //focusColor: _darkBorderActiveColor,
    ),
    colorScheme: const ColorScheme.dark(
      primary: _darkPrimaryColor,

      // secondary: _darkSecondaryColor,
    ).copyWith(
      secondary: _darkPrimaryColor,
    ),
    bottomAppBarTheme:
        const BottomAppBarThemeData(color: kBottomNavDarkBgColor),
  );
}
