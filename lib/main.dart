import 'package:blacknote/style/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './views/register_view.dart';
import './views/login_view.dart';
import './views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: AppStyles.primaryBgColor,
          textTheme: GoogleFonts.nunitoTextTheme(),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeView(),
        routes: {
          './login/': (context) => const LoginView(),
          './register/': (context) => const RegisterView(),
        });
  }
}
