import 'package:flutter/material.dart';

import 'package:train_master/train_master.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 94, 0, 202),
);

void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
      useMaterial3: true,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kColorScheme.primary,
        foregroundColor: kColorScheme.onPrimary,
      ),
      cardTheme: const CardTheme().copyWith(
        elevation: 40,
        surfaceTintColor: Colors.white,
      ),
      // cardTheme: const CardTheme().copyWith(elevation: 40, color: kColorScheme.background.withOpacity(1)),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(backgroundColor: kColorScheme.primary, foregroundColor: kColorScheme.onPrimary),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ElevatedButton.styleFrom(foregroundColor: Colors.black.withOpacity(.5)),
      ),
    ),
    // inputDecorationTheme: InputDecorationTheme(focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kColorScheme.error)))),
    home: const TrainMaster(),
  ));
}

