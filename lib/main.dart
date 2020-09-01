import 'package:example_theme/app/list_screen.dart';
import 'package:example_theme/theme/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeNotifier>(
      create: (_) => ThemeNotifier(Color(0xffa9a9a9), Color(0xfef88800), Brightness.light, 'Choose client'),
      child: Consumer<ThemeNotifier>(
        builder: (a, theme, _) {
          return MaterialApp(
            title: 'Theme Demo',
            theme: ThemeData(
              primaryColor: theme.primary,
              accentColor: theme.accent,
              brightness: theme.brightness,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: ListScreen(),
          );
        },
      ),
    );
  }
}

