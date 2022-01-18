import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/responsive/mobile_screen_layout.dart';
import 'package:flutter_instagram_clone/responsive/responsive_layout_screen.dart';
import 'package:flutter_instagram_clone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp();
    options:
    const FirebaseOptions(
        apiKey: 'AIzaSyATaPvmO-hbv6A3m7kesn4okMVgtwJLyj0',
        appId: '1:1020421112371:web:5b7e68705ad86dca065946',
        messagingSenderId: '1020421112371',
        projectId: 'instagram-clone-8c8f6',
        storageBucket: 'instagram-clone-8c8f6.appspot.com');
  } else {}
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram Clone',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: mobileBackgroundColor,
        ),
        home: ResponsiveLayout(
          mobileScreenLayout: MobileScreenLayout(),
          webScreenLayout: MobileScreenLayout(),
        ));
  }
}
