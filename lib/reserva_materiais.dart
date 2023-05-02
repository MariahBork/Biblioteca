import 'package:biblioteca/renovacao_emprestimos.dart';
import 'package:flutter/material.dart';

import 'devolucao_materiais.dart';

class ReservaMateriaisPage extends StatefulWidget {
  const ReservaMateriaisPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ReservaMateriaisPage> createState() => _ReservaMateriaisPageState();
}

class _ReservaMateriaisPageState extends State<ReservaMateriaisPage> {
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
                  "RESERVA DE MATERIAIS"),
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
                  hintText: 'INÍCIO DATA DE RESERVA',
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
                  hintText: 'FIM DATA DE REVOLUÇÃO',
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
                  hintText: 'SITUAÇÃO DA RESERVA',
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
                            builder: (context) =>
                                const RenovacaoEmprestimosPage(
                                    title: 'Página Inicial'),
                          ));
                    }),
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(150, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff57886C)),
                    ),
                    child: const Text("RESERVAR")),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DevolucaoMateriaisPage(
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
