import 'package:flutter/material.dart';
import 'package:pertemuan_7/dark_mode.dart';
import 'package:pertemuan_7/model/task_data.dart';
import 'package:pertemuan_7/screen/tasks_screen.dart';
import 'package:provider/provider.dart';
// import 'package:pertemuan_7/dark_mode.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => TaskData(),
        ),
        ChangeNotifierProvider(
          create: (BuildContext context) => ThemeModeData(),
        )
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          themeMode: Provider.of<ThemeModeData>(context).themeMode,
          darkTheme: ThemeData.dark(useMaterial3: true),
          home: TasksScreen(),
        );
      }),
    );
  }
}
