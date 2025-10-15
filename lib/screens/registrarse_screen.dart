import 'package:flutter/material.dart';
import 'package:test_inv2/main.dart'; // Para acceder al diccionario global

class RegistroScreen extends StatefulWidget {
  const RegistroScreen({super.key});

  @override
  State<RegistroScreen> createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {
  final TextEditingController controlController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void registrarUsuario() {
    String numeroControl = controlController.text.trim();
    String contrasena = passwordController.text.trim();

    if (numeroControl.isEmpty || contrasena.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor completa ambos campos')),
      );
      return;
    }

    // Guardar en el diccionario global
    usuariosPasajeros[numeroControl] = contrasena;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Usuario $numeroControl registrado correctamente!')),
    );

    // Limpiar campos
    controlController.clear();
    passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xDD9C9C9C),
      body: Center(
        child: SizedBox(
          width: 393,
          height: 852,
          child: Stack(
            children: [
              // Título: REGISTRO
              Positioned(
                left: 40,
                top: 36,
                child: Container(
                  width: 306.32,
                  height: 139.44,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(25.25),
                  ),
                ),
              ),
              Positioned(
                left: 96,
                top: 83,
                child: SizedBox(
                  width: 220,
                  height: 46,
                  child: Text(
                    'REGISTRO',
                    textAlign: TextAlign.center,
                    style: testFont,
                  ),
                ),
              ),

              // === TextField: No. Control ===
              Positioned(
                left: 42,
                top: 275,
                child: SizedBox(
                  width: 306,
                  height: 50,
                  child: TextField(
                    controller: controlController,
                    decoration: const InputDecoration(
                      hintText: 'No. Control',
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
              ),

              // === TextField: Contraseña ===
              Positioned(
                left: 45,
                top: 360,
                child: SizedBox(
                  width: 306,
                  height: 50,
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Contraseña',
                      border: UnderlineInputBorder(),
                    ),
                  ),
                ),
              ),

              // Caja: PASAJERO
              Positioned(
                left: 47,
                top: 461,
                child: Container(
                  width: 306,
                  height: 77,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(25.25),
                  ),
                ),
              ),
              Positioned(
                left: 98,
                top: 477,
                child: SizedBox(
                  width: 220,
                  height: 46,
                  child: Text(
                    'PASAJERO',
                    textAlign: TextAlign.center,
                    style: testFont,
                  ),
                ),
              ),

              // Botón: REGISTRARSE (tappable)
              Positioned(
                left: 45,
                top: 585,
                child: GestureDetector(
                  onTap: registrarUsuario,
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
                        style: testFont,
                      ),
                    ),
                  ),
                ),
              ),

              // Icono: Arrow Right (placeholder)
              Positioned(
                left: 327,
                top: 797,
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
