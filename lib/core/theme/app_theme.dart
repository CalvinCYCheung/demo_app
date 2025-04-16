import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class AppTheme {
  ThemeData get dark;
  ThemeData get light;
}

class MainTheme implements AppTheme {
  static const Color _black = Color.fromARGB(255, 22, 22, 22);
  static const Color _white = Color.fromARGB(255, 220, 220, 220);
  static const Color _grey1 = Color.fromARGB(255, 75, 75, 75);
  static const Color _grey2 = Color.fromARGB(255, 125, 125, 125);
  static const Color _grey3 = Color.fromARGB(255, 172, 172, 172);

  @override
  ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
      scaffoldBackgroundColor: lightColorScheme.surface,
      drawerTheme: DrawerThemeData(backgroundColor: lightColorScheme.surface),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconColor: WidgetStatePropertyAll(lightColorScheme.onPrimary),
          visualDensity: VisualDensity(
            vertical: VisualDensity.minimumDensity,
            horizontal: VisualDensity.minimumDensity,
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: lightColorScheme.onPrimary),
        bodyMedium: TextStyle(color: lightColorScheme.onPrimary),
        bodySmall: TextStyle(color: lightColorScheme.onPrimary),
        displayLarge: TextStyle(color: lightColorScheme.onPrimary),
        displayMedium: TextStyle(color: lightColorScheme.onPrimary),
        displaySmall: TextStyle(color: lightColorScheme.onPrimary),
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(RoundedRectangleBorder()),
          // )
        ),
      ),
      listTileTheme: ListTileThemeData(
        visualDensity: VisualDensity.compact,
        shape: RoundedRectangleBorder(),
      ),
      outlinedButtonTheme: const OutlinedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
        ),
      ),
    );
  }

  @override
  ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      colorScheme: darkColorScheme,
      scaffoldBackgroundColor: darkColorScheme.surface,
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconColor: WidgetStatePropertyAll(darkColorScheme.onPrimary),
          visualDensity: const VisualDensity(
            vertical: VisualDensity.minimumDensity,
            horizontal: VisualDensity.minimumDensity,
          ),
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: darkColorScheme.onPrimary),
        bodyMedium: TextStyle(color: darkColorScheme.onPrimary),
        bodySmall: TextStyle(color: darkColorScheme.onPrimary),
        displayLarge: TextStyle(color: darkColorScheme.onPrimary),
        displayMedium: TextStyle(color: darkColorScheme.onPrimary),
        displaySmall: TextStyle(color: darkColorScheme.onPrimary),
        // headlineLarge: TextStyle(color: darkColorScheme.onPrimary),
        // headlineMedium: TextStyle(color: darkColorScheme.onPrimary),
        // headlineSmall: TextStyle(color: darkColorScheme.onPrimary),
      ),
      dropdownMenuTheme: const DropdownMenuThemeData(
        inputDecorationTheme: InputDecorationTheme(isCollapsed: true),
      ),
      canvasColor: darkColorScheme.surface,
    );
  }

  ColorScheme lightColorScheme = ColorScheme.light(
    brightness: Brightness.light,
    primary: _grey2,
    onPrimary: _black,
    secondary: _grey3,
    onSecondary: _black,
    tertiary: _white,
    onTertiary: _black,
    surface: _white,
    onSurface: _black,
    // error: Colors.red.shade700,
    // onError: Colors.red.shade700,
    // background: const Color.fromARGB(200, 255, 255, 255),
    // surface: const Color.fromRGBO(12, 89, 130, 0.584),
    // onSurface: const Color.fromRGBO(12, 89, 130, 0.584),
    // tertiary: const Color.fromARGB(147, 12, 57, 130),
    // onTertiary: const Color.fromARGB(147, 12, 57, 130),
  );

  ColorScheme darkColorScheme = const ColorScheme.dark(
    brightness: Brightness.dark,
    primary: _black,
    onPrimary: _white,
    secondary: _grey1,
    onSecondary: _grey3,
    tertiary: _grey2,
    onTertiary: _black,
    surface: _black,
    onSurface: _white,
    // error: Colors.red.shade700,
    // onError: Colors.red.shade700,
    // background: const Color.fromARGB(201, 67, 67, 67),
    // background: const Color.fromARGB(210, 0, 0, 0),
    // // onBackground: const Color.fromARGB(201, 67, 67, 67),
    // onBackground: const Color.fromARGB(210, 0, 0, 0),
    // surface: const Color.fromARGB(255, 218, 156, 11),
    // onSurface: const Color.fromARGB(255, 218, 156, 11),
    // tertiary: const Color.fromARGB(255, 12, 57, 130),
    // onTertiary: const Color.fromARGB(255, 12, 57, 130),
  );
}

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.dark);

  void toggleTheme() {
    emit(state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark);
  }
}

final themeModeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.dark);
