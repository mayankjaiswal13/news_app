import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/news_list.dart';
import 'package:news_app/service_locater.dart';


void main() {
  setupLocator(); // Initialize the service locator
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      home: NewsListScreen(), // Your main screen
    );
  }
}
