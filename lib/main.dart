import 'package:flutter/material.dart';
import 'screens/registrarse_screen.dart';
import 'screens/login_screen.dart';
import 'screens/login_pasajero_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData.dark(),
      initialRoute: '/login', // which screen opens first
      routes: {
        //'/inicial': (context) => const InicialScreen(),
        '/login': (context) => const LoginScreen(),
        '/REGISTRO': (context) => const RegistroScreen(),
        '/login_pasajero': (context) => const LoginPasajeroScreen(),
      },
    );
  }
}
