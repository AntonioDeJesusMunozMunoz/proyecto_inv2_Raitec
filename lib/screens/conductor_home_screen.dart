import 'package:flutter/material.dart';
import 'package:test_inv2/utils.dart';
import 'conductor_pedir_datos_del_ dia_screen.dart';
import 'pasajero_ruta_screen.dart';

// 🔹 Cada elemento tiene su propio onTap
final carouselItems = [
  {
    'day': 'LUNES',
    'conductor': 'Agustín',
    'onTap': (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const ConductorPedirDatosScreen()),
      );
    }
  },
  {
    'day': 'MARTES',
    'conductor': 'Carlos',
    'onTap': (BuildContext context) {

    }
  },
  {
    'day': 'MIÉRCOLES',
    'conductor': 'Sofía',
    'onTap': (BuildContext context) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('miércoles'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  },
  {
    'day': 'JUEVES',
    'conductor': 'Lucía',
    'onTap': (BuildContext context) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('🚧 Próximamente jueves'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  },
  {
    'day': 'VIERNES',
    'conductor': 'Diego',
    'onTap': (BuildContext context) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Viernes'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  },
];

class ConductorHomeScreen extends StatelessWidget {
  const ConductorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBEBEBE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(30),
            width: 100,
            height: 100,
            decoration: testBox,
          ),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: CarouselView(
              enableSplash: false,
              scrollDirection: Axis.horizontal,
              itemExtent: 350,
              shrinkExtent: 350,
              children: carouselItems.map((item) {
                return _buildCarouselCard(
                  context,
                  item['day'] as String,
                  item['onTap'] as void Function(BuildContext),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Text('HOY', style: testFont),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('🚧 Unimplemented'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  height: 250,
                  decoration: testBox,
                ),
              ),
            ],
          ),
        ],
      ),
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
          margin: const EdgeInsets.fromLTRB(0, 10, 0, 5),
          decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.elliptical(20, 10)),
          ),
          child: const Center(
            child: Text(
              "CAMBIAR RUTA",
              style: TextStyle(fontSize: 35, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  ///Widget que crea cada tarjeta con su propio diseño y acción
  Widget _buildCarouselCard(
      BuildContext context,
      String day,
      void Function(BuildContext) onTap,
      ) {
    return GestureDetector(
      onTap: () => onTap(context), //cada hijo ejecuta su propio callback
      child: Container(
        width: 300,
        decoration: whiteBox,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Encabezado
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(day, style: testFont),
                const SizedBox(width: 50),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('🚧 Botón rojo del $day'),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),

            // Cuerpo central
            Container(
              width: 200,
              height: 200,
              decoration: testBox,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 100,
                    decoration: testBox,
                    child: const Text(
                      'VER RUTA',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
