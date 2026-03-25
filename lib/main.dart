import 'package:flutter/material.dart';
import 'mispantallas/bienvenidos.dart';
import 'mispantallas/login.dart';
import 'mispantallas/signup.dart';

void main() => runApp(const JardinMaravillasApp());

class JardinMaravillasApp extends StatelessWidget {
  const JardinMaravillasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jardín de las Maravillas',
      // Definimos la ruta inicial y el mapa de rutas
      initialRoute: '/',
      routes: {
        '/': (context) => const BienvenidosPantalla(),
        '/login': (context) => const LoginPantalla(),
        '/signup': (context) => const SignupPantalla(),
      },
    );
  }
}