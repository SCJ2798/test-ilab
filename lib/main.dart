import 'package:flutter/material.dart';
import 'package:ilabtest/view/pages/home/home_page.dart';
import 'package:ilabtest/view/pages/profile_page.dart';
import 'package:ilabtest/view/pages/sign_in_page.dart';
import 'package:ilabtest/view/pages/sign_up_page.dart';
import 'package:ilabtest/view_model/auth_view_model.dart';
import 'package:ilabtest/view_model/home_view_model.dart';
import 'package:ilabtest/view_model/profile_view_model.dart';
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
      providers: [
        ChangeNotifierProvider.value(value: AuthViewModel()),
        ChangeNotifierProvider.value(value: HomeViewModel()),
        ChangeNotifierProvider.value(value: ProfileViewModel()),
      ],
      child: MaterialApp(
        title: 'LinkedIn',
        theme: ThemeData(
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Color.fromARGB(255, 0, 120, 240)),
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 0, 120, 240)),
          useMaterial3: true,
        ),
        routes: {
          '/join': (context) => const SignUpViewPage(),
          '/login': (context) => const SignInViewPage(),
          '/home': (context) => const HomeViewPage(),
          '/profile': (context) => const ProfieViewPage(),
        },
        home: const SignInViewPage(),
      ),
    );
  }
}
