import 'package:ccr_multistore_app/screens/customer_signup.dart';
import 'package:ccr_multistore_app/screens/dummy.dart';
import 'package:ccr_multistore_app/screens/welcome_screen.dart';
import 'package:ccr_multistore_app/views/customer_home.dart';
import 'package:ccr_multistore_app/views/vendor_home.dart';
import 'package:flutter/material.dart';

import 'package:ccr_multistore_app/helpers/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Car Care & Repair",
      // themeMode: ThemeMode.system,
      themeMode: ThemeMode.system,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const CustomerSignUpScreen(),
      // initialRoute: '/welcome_screen',
      routes: {
        '/welcome_screen': (context) => const WelcomeScreen(),
        '/customer_home': (context) => const CustomerHomeView(),
        '/vendor_home': (context) => const VendorHomeView(),
      },
    );
  }
}
