import 'package:dynamic_layout/layouts/mobile_layout.dart';
import 'package:dynamic_layout/layouts/tab_layout.dart';
import 'package:dynamic_layout/layouts/web_layout.dart';
import 'package:dynamic_layout/responsive_layout/responsive_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(mobileLayout: MobileLayout(), tabLayout: TabLayout(), webLayout: WebLayout()),
      debugShowCheckedModeBanner: false,
    );
  }
}
