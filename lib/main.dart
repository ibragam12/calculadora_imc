// lib/main.dart
import 'package:flutter/material.dart';
// 1. SOLO IMPORTAMOS LA PRIMERA PANTALLA
import 'package:calculadora_imc/pages/input_page.dart'; 

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora IMC',
      // 2. DEFINICIÓN DEL TEMA DE LA APLICACIÓN
      theme: ThemeData.dark().copyWith(
        // Color de fondo para toda la aplicación (Scaffold y Primario)
        primaryColor: const Color(0xFF0A0E21), 
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        // Personalización de colores de acento para widgets
        colorScheme: const ColorScheme.dark().copyWith(
          secondary: const Color(0xFFEB1555), // Color de acento (para FloatingActionButtons, etc.)
        ),
        // Estilo del AppBar para que coincida con el fondo
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
      ),
      // 3. DEFINIMOS LA PANTALLA DE INICIO
      home: const InputPage(),
    );
  }
}

