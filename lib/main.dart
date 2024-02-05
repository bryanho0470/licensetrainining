import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:licensetrainining/pages/login_page.dart';
import 'package:licensetrainining/pages/spalsh_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCfN2F--4WaHXCxTt2Yf08pfP5Sj1XT4u0",
            appId: "1:127424822752:web:ae7aaa3d1e64257941bf85",
            messagingSenderId: "127424822752",
            projectId: "license-training"));
  }
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(
        child: LoginPage(),
      ),
    );
  }
}
