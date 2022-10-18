import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:xofthox/firebase_options.dart';
import 'package:xofthox/screens/welcome/welcome_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Xofthox());
}

class Xofthox extends StatelessWidget {
  const Xofthox({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: XofthoxApp(),
    );
  }
}

class XofthoxApp extends StatefulWidget {
  const XofthoxApp({super.key});

  @override
  State<XofthoxApp> createState() => _XofthoxAppState();
}

class _XofthoxAppState extends State<XofthoxApp> {
  @override
  Widget build(BuildContext context) {
    return const WelcomeScreen();
  }
}



// This is text Comment(),