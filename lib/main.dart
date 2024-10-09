import 'package:flutter/material.dart';

import 'app.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollbarTheme = ScrollbarThemeData(
      thumbVisibility: WidgetStateProperty.all(true),
    );

    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(scrollbarTheme: scrollbarTheme),
        darkTheme: ThemeData.dark().copyWith(scrollbarTheme: scrollbarTheme),
        title: 'Flutter PDF Resume',
        home: const MyApp(),
      ),
    );
  }
}
