

import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {

  ThemeNotifier(this.primary, this.accent, this.brightness, this.name);

  Color primary;
  Color accent;
  Brightness brightness;

  String name;
  String iconAsset;

  void change(Color primary, Color accent, Brightness brightness, String name, String iconAsset) {
    this.primary = primary;
    this.accent = accent;
    this.brightness = brightness;
    this.name = name;
    this.iconAsset = iconAsset;
    notifyListeners();
  }

}