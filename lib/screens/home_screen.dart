import 'package:flutter/material.dart';
import 'package:test_inv2/main.dart';
import 'pasajero_ruta_screen.dart';

class PasajeroHomeScreen extends StatelessWidget {
  const PasajeroHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBEBEBE),
      bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PasajeroRutaScreen()),
            );
          },
          child: Container(
            width: 100,
            height: 50,
            margin: EdgeInsetsGeometry.fromLTRB(0, 10, 0, 5),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.elliptical(20,10)),
            ),
            child: Center(
                  child: Text(
                    "ELEGIR RUTA",
                    style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                )
            )
          )
      ),
      body: Stack(
        children: [
          // Elipse gris (cuenta)
          Positioned(
            top: 20,
            left: 309.57,
            child: Container(
              width: 59,
              height: 61,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFD9D9D9),
              ),
            ),
          ),

          // Elipse negra (indicador)
          Positioned(
            top: 30,
            left: 329,
            child: Container(
              width: 21,
              height: 21,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF180202),
              ),
            ),
          ),

          // Ícono vector (simulado como caja negra)
          Positioned(
            top: 54.26,
            left: 322.5,
            child: Container(
              width: 35.5,
              height: 25.31,
              decoration: BoxDecoration(
                color: Color(0xFF080808),
                borderRadius: BorderRadius.circular(15)
              ),
            ),
          ),

          // Texto: CUENTA
          Positioned(
            top: 86,
            left: 307,
            child: Text(
              "CUENTA",
              style: const TextStyle(
                fontSize: 12,
                letterSpacing: 0.17,
                color: Colors.black,
                height: 1.25,
              ),
            ),
          ),

          // Texto: FRECUENTES
          Positioned(
            top: 120,
            left: 70,
            child: Text(
              "FRECUENTES",
              style: const TextStyle(
                fontSize: 32,
                letterSpacing: 0.12,
                color: Color(0xFF2A2525),
              ),
            ),
          ),

          // Línea horizontal 1
          Positioned(
            top: 530,
            left: 25,
            child: Container(
              width: 334.01,
              height: 1,
              color: Colors.black,
            ),
          ),

          // Texto: SEMANALES
          Positioned(
            top: 560,
            left: 80,
            child: Text(
              "SEMANALES",
              style: const TextStyle(
                fontSize: 32,
                letterSpacing: 0.12,
                color: Color(0xFF2A2525),
              ),
            ),
          ),

          // Línea horizontal 2
          Positioned(
            top: 195,
            left: 33,
            child: Container(
              width: 334.01,
              height: 1,
              color: Colors.black,
            ),
          ),

          // Rectángulo borde verde
          Positioned(
            top: 54,
            left: 14,
            child: Container(
              width: 181,
              height: 48.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Color(0xFF60A900),
                  width: 3,
                ),
                color: Color(0xFFD9D9D9),
              ),
            ),
          ),

          // Texto: $ 50.37MXN
          Positioned(
            top: 63,
            left: 34,
            child: Text(
              "\$ 50.37MXN",
              style: const TextStyle(
                fontSize: 23.92,
                color: Colors.black,
              ),
            ),
          ),

          // Círculo verde
          Positioned(
            top: 54,
            left: 210,
            child: Container(
              width: 48,
              height: 48,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF60A900),
              ),
            ),
          ),

          // Botón con ícono "+" (simulado como un contenedor por ahora)
          Positioned(
            top: 58,
            left: 214,
            child: Container(
              width: 40,
              height: 40,
              color: Colors.transparent,
              child: const Center(
                child: Icon(Icons.add, color: Colors.white),
              ),
            ),
          ),

          // Texto: *Selecciona el perfil...
          Positioned(
            top: 203,
            left: 27,
            child: Text(
              "*Selecciona el perfil para acceder al chat",
              style: const TextStyle(
                fontSize: 13.98,
                letterSpacing: 0.12,
                color: Colors.black,
              ),
            ),
          ),

          // Placeholder para frame_5
          Positioned(
            top: 241,
            left: 14,
            child: Container(
              width: 369,
              height: 225,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: Colors.black12),
              ),
              child: const Center(child: Text("Frame 5")),
            ),
          ),

          // Placeholder para frame_2
          Positioned(
            top: 555,
            left: 20,
            child: Container(
              width: 343,
              height: 244,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: Border.all(color: Colors.black12),
              ),
              child: const Center(child: Text("Frame 2")),
            ),
          ),

        ],
      ),
    );
  }
}
