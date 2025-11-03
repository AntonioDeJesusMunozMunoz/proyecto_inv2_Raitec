import 'package:flutter/material.dart';
import 'package:test_inv2/screens/pasajero_pedir_datos_del_dia_screen.dart';
import 'package:test_inv2/utils.dart';
import 'pasajero_ruta_screen.dart';

//Cada elemento tiene su propio onTap
final carouselItems = [
  {
    'day': 'LUNES',
    'conductor': 'Agustín',
    'onTap': (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const PasajeroPedirDatosScreen()),
      );
    }
  },
  {
    'day': 'MARTES',
    'conductor': 'Carlos',
    'onTap': (BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const PasajeroRutaScreen()),
      );
    }
  },
  {
    'day': 'MIÉRCOLES',
    'conductor': 'Sofía',
    'onTap': (BuildContext context) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Reservas del miércoles'),
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
          content: Text('Próximamente jueves'),
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
          content: Text('Viernes libre SIIIIIIIIIIIIIIII'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  },
];

class PasajeroHomeScreen extends StatelessWidget {
  const PasajeroHomeScreen({super.key});

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
                  item['conductor'] as String,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      GestureDetector(
                        onTap: () => {},
                        child: Container(
                          width: 150,
                          height: 75,
                          decoration: testBox,
                          alignment: Alignment.center,
                          child: Text('Ver Ruta', style: smallTestFont,),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => {},
                        child: Container(
                          width: 150,
                          height: 75,
                          decoration: whiteBox,
                          alignment: Alignment.center,
                          child: Text('Confirmar', style: smallTestFont,),
                        )
                      ),
                    ],
                  ),
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
              "SI VOY",
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
      String conductor,
      void Function(BuildContext) onTap,
      ) {
    return GestureDetector(
      onTap: () => onTap(context), //cada hijo ejecuta su propio callback
      child: Container(
        width: 300,
        decoration: brownBox,
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
                  Text('Conductor:', style: smallTestFont),
                  Text(conductor, style: smallTestFont),
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
