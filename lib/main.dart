import 'package:flutter/material.dart';
import 'package:ilabtest/view/pages/home_page.dart';
import 'package:ilabtest/view/pages/onboarding_page.dart';
import 'package:ilabtest/view/pages/profile_page.dart';
import 'package:ilabtest/view/pages/sign_up_page.dart';
import 'package:ilabtest/view/pages/sign_in_page.dart';
import 'package:ilabtest/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: AuthViewModel())],
      child: MaterialApp(
        title: 'LinkedIn',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 14, 130, 246)),
          useMaterial3: true,
        ),
        home: const ProfieViewPage(),
      ),
    );
  }
}
