import 'package:flutter/material.dart';
import 'package:test_inv2/screens/login_pasajero_screen.dart';
import 'package:test_inv2/screens/registrarse_screen.dart';
//import 'pasajero_screen.dart';
import 'login_conductor_screen.dart';
//import 'registro_screen.dart';

import 'package:test_inv2/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // INICIO DE SESIÓN
          Positioned(
            left: 13,
            top: 180,
            child: SizedBox(
              width: 367.59,
              height: 52,
              child: Text(
                'INICIO DE SESIÓN',
                textAlign: TextAlign.center,
                style: testFont,
              ),
            ),
          ),

          // Línea negra (line_5)
          Positioned(
            left: 14,
            top: 245,
            child: Container(
              width: 365.01,
              height: 5,
              color: Colors.black,
            ),
          ),

          // Rectángulo PASAJERO con navegación
          Positioned(
            left: 57,
            top: 289,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPasajeroScreen()),
                );
              },
              child: Container(
                width: 279,
                height: 127,
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(23),
                ),
                child: const Center(
                  child: Text(
                    'PASAJERO',
                    textAlign: TextAlign.center,
                    style: testFont,
                  ),
                ),
              ),
            ),
          ),

          // Rectángulo CONDUCTOR con navegación
          Positioned(
            left: 57,
            top: 436,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginConductorScreen()),
                );
              },
              child: Container(
                width: 279,
                height: 127,
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(23),
                ),
                child: const Center(
                  child: Text(
                    'CONDUCTOR',
                    textAlign: TextAlign.center,
                    style: testFont
                  ),
                ),
              ),
            ),
          ),

          // Botón REGISTRARSE con navegación
          Positioned(
            left: 46,
            top: 605,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegistroScreen()),
                );
              },
              child: Container(
                width: 301,
                height: 72,
                decoration: BoxDecoration(
                  color: const Color(0xFF60A900),
                  borderRadius: BorderRadius.circular(25.25),
                ),
                child: const Center(
                  child: Text(
                    'REGISTRARSE',
                    textAlign: TextAlign.center,
                    style: testFont,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
