import 'package:flutter/material.dart';
import 'package:news_list/presenter/widgets/colors/colors_project.dart';

class ThemeDataProject {
  static ThemeData light = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: ColorsProject.primary,
      secondary: ColorsProject.primary,
      secondaryContainer: ColorsProject.secondary,
    ),
  );
}
