import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_image_editor/screens/image_info.dart';
import 'package:flutter_image_editor/notifiers/theme_notifier.dart';
import 'package:flutter_image_editor/screens/tools/crop_screen.dart';
import 'package:flutter_image_editor/screens/tools/tune_image_screen.dart';
import 'package:flutter_image_editor/screens/editing_screen.dart';
import 'package:flutter_image_editor/screens/home_screen.dart';
import 'package:flutter_image_editor/screens/tools/white_balance_screen.dart';
import 'package:hooks_riverpod/all.dart';

class App extends ConsumerWidget {
  @override
  Widget build(BuildContext context, reader) {
    final notifier = reader(themeNotifier);
    return MaterialApp(
      title: 'Flutter Image Editor',
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(),
        '/editing': (context) => EditingScreen(),
        '/image_info': (context) => FieImageInfo(),
        '/tune_image': (context) => TuneImageScreen(),
        '/white_balance': (context) => ColorPickerWidget(),
        '/crop': (context) => CropScreen(),
      },
      themeMode: notifier.themeMode,
      theme: notifier.themeData,
    );
  }
}
