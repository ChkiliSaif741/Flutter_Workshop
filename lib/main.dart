import 'package:flutter/material.dart';
import 'package:untitled1/GStore.dart';
import 'package:untitled1/GStoreGridView.dart';
import 'package:untitled1/GStoreList.dart';
import 'package:untitled1/ProfileSettings.dart';
import 'package:untitled1/SignIn.dart';
import 'package:untitled1/SignUp.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfileSettings(),
    );
  }
}