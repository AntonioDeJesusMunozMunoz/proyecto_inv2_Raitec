import 'package:flutter/material.dart';
import 'screens/registrarse_screen.dart';
import 'screens/login_screen.dart';
import 'screens/login_pasajero_screen.dart';

void main() {
  runApp(const MyApp());
}

Map<String, String> usuariosPasajeros = {
  '12345': 'pass123',
  '67890': 'password',
  '11223': 'abc123',
  'a':'a',
};

const TextStyle testFont = TextStyle(fontSize: 38.4, color: Colors.black);

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
