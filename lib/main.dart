import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/auth_screen.dart';
import 'screens/home_screen.dart';
import 'screens/tabs.dart';
import 'screens/event_screen.dart';
import 'screens/edit_profile_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'G-Fest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black, // Background color for the AppBar
          titleTextStyle: TextStyle(
            color: Colors.white, // Text color for the AppBar title
            fontFamily: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
            ).fontFamily,
            fontSize: 20,
          ),
          iconTheme: const IconThemeData(
            color:
                Colors.white, // Color for the AppBar icons (e.g., back button)
          ),
        ),
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const TabsScreen();
          }
          return const AuthScreen();
        },
      ),
      routes: {
        AuthScreen.routeName: (ctx) => const AuthScreen(),
        HomeScreen.routeName: (ctx) => const HomeScreen(),
        TabsScreen.routeName: (ctx) => const TabsScreen(),
        EventScreen.routeName: (ctx) => const EventScreen(),
        EditProfileScreen.routeName: (ctx) => const EditProfileScreen(),
      },
    );
  }
}
