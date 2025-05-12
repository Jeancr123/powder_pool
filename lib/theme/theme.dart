import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getAppTheme = Provider<ThemeData?>((ref) {
  return AppTheme.light;
});

class AppTheme {
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    // colorSchemeSeed: const Color(0xFF00ABC6),  ERROR WITH MATERIAL 3
    brightness: Brightness.light,
    primaryColor: AppColors.primary,

    // scaffoldBackgroundColor: Colors.grey.shade200,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      // background: const Color(0x00989898),
      brightness: Brightness.light,
      background: Colors.white,
      secondary: AppColors.secondary,
      secondaryContainer: AppColors.secondary,
      onSecondary: Colors.white,
      primary: AppColors.primary,
      primaryContainer: AppColors.primary,
      onPrimary: Colors.white,
      onPrimaryContainer: AppColors.primary,
      onBackground: AppColors.primary,
    ),

    secondaryHeaderColor: const Color(0xFFde7008),
    disabledColor: Color.fromARGB(255, 186, 186, 186),

    textTheme: TextTheme(
      bodyLarge: TextStyle(fontFamily: 'Lato'),
      bodyMedium: TextStyle(fontFamily: 'Lato'),
      displayLarge: TextStyle(fontFamily: 'Lato'),
      displayMedium: TextStyle(fontFamily: 'Lato'),
      displaySmall: TextStyle(fontFamily: 'Lato'),
      headlineMedium: TextStyle(fontFamily: 'Lato'),
      headlineSmall: TextStyle(fontFamily: 'Lato'),
      titleLarge: TextStyle(fontFamily: 'Lato'),
      labelSmall: TextStyle(fontFamily: 'Lato'),
      labelLarge: TextStyle(fontFamily: 'Lato'),
      titleMedium: TextStyle(fontFamily: 'Lato'),
      titleSmall: TextStyle(fontFamily: 'Lato'),
    ),
    buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.normal),
    cardColor: Colors.grey.shade200,
    cardTheme: CardTheme(
      color: Color(0xFFEEEEEE),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
    ),
  );
}

class AppColors {
  static const Color primary = Color(0xFF00ABC6);
  static const Color secondary = Color(0xFFde7008);
  static const Color background = Color(0xFFEEEEEE);

  static const green = Color(0xFF75b66a);
  static const yellow = Color(0xFFe0ad12);
  static const orange = Color(0xFFde7008);
  static const purple = Color(0xFF85248f);
  static const blue = Color(0xFF00ABC6);
  static const rubine = Color(0xFFcf035c);

  static const bluetoothColor = Color(0xFF006E7F);

  static const strep = Color(0xFFde7008);
  static const flu = Color(0xFF85248f);
  static const covid = Color(0xFF00ABC6);
  static const mocked = Color(0xFF85248f);

  static const actionEdit = Color(0xFF00ABC6);
  static const actionDelete = Color(0xFFFE4A49);

  static final backColorApp = Color.fromRGBO(113, 141, 255, 0.1);

  static Color proBackgroundColor = Colors.grey.shade200;
  static Color proBackgroudColorDark = Colors.black87;
}
