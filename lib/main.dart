import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quest/catalog/home.dart';
import 'package:flutter_quest/catalog/properties_list.dart';

void main() {
  runApp(const MyApp());
}

final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.light);
final ValueNotifier<Color> themeColorNotifier = ValueNotifier(Colors.teal);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Color>(
      valueListenable: themeColorNotifier,
      builder: (_, color, __) {
        return ValueListenableBuilder<ThemeMode>(
            valueListenable: themeNotifier,
            builder: (_, mode, __) {
              return MaterialApp(
                title: 'Flutter Quest',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(
                    seedColor: color,
                    brightness: Brightness.light,
                  ),
                  sliderTheme: const SliderThemeData(
                    showValueIndicator: ShowValueIndicator.always,
                  ),
                ),
                darkTheme: ThemeData(
                  colorScheme: ColorScheme.fromSeed(
                    seedColor: color,
                    brightness: Brightness.dark,
                  ),
                  sliderTheme: const SliderThemeData(
                    showValueIndicator: ShowValueIndicator.always,
                  ),
                ),
                themeMode: mode,
                home: const PropertiesList(),
              );
            });
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void dispose() {
    themeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Quest"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Animations"),
            onTap: () {
              navigateTo(context, const Home());
            },
          )
        ],
      ),
    );
  }
}

void navigateTo(BuildContext context, Widget screen) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (_) => screen,
    ),
  );
}

