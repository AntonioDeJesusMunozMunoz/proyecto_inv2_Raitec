import 'package:flutter/material.dart';
// Importa tu archivo principal donde tengas el diccionario
import 'package:test_inv2/main.dart'; // Ajusta el path si es necesario
import 'conductor_home_screen.dart';

class LoginConductorScreen extends StatefulWidget {
  const LoginConductorScreen({super.key});

  @override
  State<LoginConductorScreen> createState() => _LoginConductorScreenState();
}

class _LoginConductorScreenState extends State<LoginConductorScreen> {
  final TextEditingController controlController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Método para validar usuario
  void _ingresar() {
    String control = controlController.text;
    String password = passwordController.text;

    if (usuariosPasajeros.containsKey(control) &&
        usuariosPasajeros[control] == password) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ConductorHomeScreen()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Número de control o contraseña incorrecta.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: 393,
        height: 852,
        color: Colors.white,
        child: Stack(
          children: [
            // === Rectangle 1 (Top Gray Box) ===
            Positioned(
              left: 40,
              top: 86,
              child: Container(
                width: 306.32,
                height: 139.44,
                decoration: BoxDecoration(
                  color: const Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(25.25),
                ),
              ),
            ),

            // === PASAJERO Text ===
            const Positioned(
              left: 60,
              top: 133,
              child: SizedBox(
                width: 260,
                height: 46,
                child: Center(
                  child: Text(
                    'CONDUCTOR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 38.4,
                      color: Colors.black,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
              ),
            ),

            // === Line 6 ===
            Positioned(
              left: 42,
              top: 397,
              child: Container(
                width: 306,
                height: 3,
                color: Colors.black,
              ),
            ),

            // === No. Control TextField ===
            Positioned(
              left: 69,
              top: 349,
              child: SizedBox(
                width: 247,
                height: 36,
                child: TextField(
                  controller: controlController,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                  decoration: const InputDecoration(
                    hintText: 'No. Control',
                    hintStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),

            // === Line 7 ===
            Positioned(
              left: 45,
              top: 500,
              child: Container(
                width: 306,
                height: 3,
                color: Colors.black,
              ),
            ),

            // === Contraseña TextField ===
            Positioned(
              left: 74,
              top: 452,
              child: SizedBox(
                width: 242,
                height: 36,
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                  decoration: const InputDecoration(
                    hintText: 'Contraseña',
                    hintStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),

            // === Rectangle 2 (Bottom Green Box) con onTap ===
            Positioned(
              left: 63,
              top: 529,
              child: GestureDetector(
                onTap: _ingresar,
                child: Container(
                  width: 253,
                  height: 69,
                  decoration: BoxDecoration(
                    color: const Color(0xFF60A900),
                    borderRadius: BorderRadius.circular(25.25),
                  ),
                  child: const Center(
                    child: Text(
                      'INGRESAR',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 38.4,
                        color: Colors.black,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // === Arrow Right Placeholder ===
            Positioned(
              left: 327,
              top: 797,
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black26),
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
