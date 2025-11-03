import 'package:flutter/material.dart';
import 'package:test_inv2/utils.dart';

//Clase personalizada para seleccionar una hora
class HoraPicker extends StatefulWidget {
  const HoraPicker({super.key});

  @override
  State<HoraPicker> createState() => _HoraPickerState();
}

class _HoraPickerState extends State<HoraPicker> {
  TimeOfDay? selectedTime;

  Future<void> _pickTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _pickTime(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade400),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.access_time, color: Colors.grey.shade700),
            const SizedBox(width: 8),
            Text(
              selectedTime != null
                  ? selectedTime!.format(context)
                  : '+',
              style: smallTestFont,
            ),
          ],
        ),
      ),
    );
  }
}

// Pantalla principal
class ConductorPedirDatosScreen extends StatelessWidget {
  const ConductorPedirDatosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFBEBEBE),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            Text('LUNES', style: testFont),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text('Hora de llegada: ', style: smallTestFont),
                const SizedBox(width: 5),
                //Aquí se muestra el widget del reloj
                const HoraPicker(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: [
                Text('Punto de partida: ', style: smallTestFont),
                const SizedBox(width: 8),
                GestureDetector(
                  child: Container(
                    width: 150,
                    height: 70,
                    decoration: testBox,
                    alignment: Alignment.center,
                    child: Text('Elegir', style: smallTestFont),
                  ),
                )
              ],
            ),
            GestureDetector(
              child: Container(
                width: 350,
                height: 490,
                decoration: testBox,
              ),
            )
          ],
        ),
      ),
    );
  }
}
