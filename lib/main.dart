import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iotnode/screens/iotscreen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/iotscreen': (BuildContext context) => IotScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: IotScreen(),
    );
  }
}
