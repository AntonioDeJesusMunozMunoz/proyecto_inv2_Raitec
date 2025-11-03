//aquí van todas las funciones y clases que varias screens van a usar, tambien variables constantes
import 'package:flutter/material.dart';

class screens{
  static const String loginGeneral = "/login";
  static const String registro = "/REGISTRO";
  static const String loginPasajero = "/login_pasajero";
}

final testBox = BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(15), border: Border.all());
final brownBox = BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(15), border: Border.all());
final whiteBox = BoxDecoration(color: Colors.lime, borderRadius: BorderRadius.circular(15), border: Border.all());

const TextStyle testFont = TextStyle(fontSize: 38.4, color: Colors.black);
const TextStyle smallTestFont = TextStyle(fontSize: 25, color: Colors.black);

// class dia extends StatelessWidget {
//   final Widget? child;
//   final EdgeInsetsGeometry? padding;
//   final EdgeInsetsGeometry? margin;
//   final Color? color;
//   final double? borderRadius;
//
//   const dia({
//     super.key,
//     this.child,
//     this.padding,
//     this.margin,
//     this.color,
//     this.borderRadius,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: padding ?? const EdgeInsets.all(16),
//       margin: margin ?? const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: color ?? const Color(0xFFBEBEBE),
//         borderRadius: BorderRadius.circular(borderRadius ?? 12),
//       ),
//       child: child,
//     );
//   }
// }
