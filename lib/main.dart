import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'views/pages/welcome/welcomaPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (p0, p1, p2) {
        return MaterialApp(
            title: 'job portal',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              // scaffoldBackgroundColor: AppColors.blackmain,
              useMaterial3: true,
            ),
            home: WelCamePage()
        );
      },
    );
  }
}
