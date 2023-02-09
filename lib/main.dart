import 'package:flutter/material.dart';
import 'package:search_or_filter_listview_with_getx/screens/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Search ListView With Getx',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
   home: HomeView(),
    );
  }
}
