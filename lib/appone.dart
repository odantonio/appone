import 'package:appone/pages/dio_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// Contruindo a Face da aplicação:
    /// ThemeData é o construtor do theme.
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: "AppOne - Primeira Aplicação",
      theme: ThemeData(

          /// PrimarySwatch cuida de alterar a cor do AppBar(),
          primarySwatch: Colors.indigo,
          textTheme: GoogleFonts.robotoTextTheme()),
      home: const DioLoginPage(),
    );
  }
}
