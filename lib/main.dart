import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_prefs_example/pages/home_page.dart';
import 'package:shared_prefs_example/pages/result_page.dart';
import 'package:shared_prefs_example/utils/user_data.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await UserData.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ResultPage.routename: (context) => ResultPage(),
        HomePage.routename: (context) => HomePage(),
      },
      home: HomePage(),
    );
  }
}

// TODO: добавление Push - уведомлений
// TODO: Построение графика с Имт значениями 
// TODO: Удаление 1 значения