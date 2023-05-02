import 'package:biblioteca/pagina_inicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  MaterialApp(
    home: Scaffold(
      backgroundColor:
          Colors.lightBlueAccent, // Define a cor de fundo do Scaffold
      appBar: AppBar(title: const Text('Meu Aplicativo Flutter')),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const PaginaInicialPage(title: 'Login'),
    );
  }
}
