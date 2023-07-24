import 'package:flutter/material.dart';

import 'screens/auth_screen.dart';
import 'screens/home_screen.dart';
import 'screens/tabs.dart';
import 'screens/event_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AuthScreen(),
      routes: {
        AuthScreen.routeName: (ctx) => const AuthScreen(),
        HomeScreen.routeName: (ctx) => const HomeScreen(),
        TabsScreen.routeName: (ctx) => const TabsScreen(),
        EventScreen.routeName: (ctx) => const EventScreen(),
      },
    );
  }
}
