import 'package:flutter/material.dart';
import 'package:vipapp/views/login_page.dart';

void main() {
  runApp(const UrbanSignalApp());
}

class UrbanSignalApp extends StatelessWidget {
  const UrbanSignalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Urban Signal',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
