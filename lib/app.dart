import 'package:flutter/material.dart';

import 'package:orbitnews/screens/home_screen.dart';

class OrbitNewsApp extends StatefulWidget {
  const OrbitNewsApp({super.key});

  @override
  State<OrbitNewsApp> createState() => _OrbitNewsAppState();
}

class _OrbitNewsAppState extends State<OrbitNewsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
