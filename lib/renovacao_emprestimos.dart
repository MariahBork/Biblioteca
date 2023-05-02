import 'package:biblioteca/reserva_materiais.dart';
import 'package:flutter/material.dart';

import 'controle_multas.dart';

class RenovacaoEmprestimosPage extends StatefulWidget {
  const RenovacaoEmprestimosPage({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  State<RenovacaoEmprestimosPage> createState() =>
      _RenovacaoEmprestimosPageState();
}

class _RenovacaoEmprestimosPageState extends State<RenovacaoEmprestimosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc2d1b6),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                  style: TextStyle(
                    color: Color(0xff57886C),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  "RENOVAÇÃO DE MATERIAIS"),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'USUÁRIO',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0))),
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                    decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'TÍTULO',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0))),
                ))),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'DATA DE RETIRADA',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0))),
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                    decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'DATA DE DEVOLUÇÃO ANTERIOR',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0))),
                ))),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'DATA DE RENOVAÇÃO ATUAL',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0))),
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                    decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'ADVERTÊNCIA DE ATRASO',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0))),
                ))),
            const Padding(
                padding: EdgeInsets.all(
              30.0,
            )),
            Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ControleMultasPage(
                                title: 'Página Inicial'),
                          ));
                    }),
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(150, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff57886C)),
                    ),
                    child: const Text("RENOVAR")),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReservaMateriaisPage(
                                title: 'Página Inicial'),
                          ));
                    }),
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(150, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff57886C)),
                    ),
                    child: const Text("VOLTAR")),
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
