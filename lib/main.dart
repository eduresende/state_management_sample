import 'package:flutter/material.dart';
import 'package:state_management_sample/home_page.dart';
import 'package:state_management_sample/store/counter_store.dart';

CounterStore counterStore = CounterStore();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(counterStore: counterStore),
    );
  }
}
