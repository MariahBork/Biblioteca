import 'package:biblioteca/controle_multas.dart';
import 'package:biblioteca/devolucao_materiais.dart';
import 'package:biblioteca/emprestimo_materiais.dart';
import 'package:biblioteca/pagina_inicial.dart';
import 'package:biblioteca/relatorios.dart';
import 'package:biblioteca/renovacao_emprestimos.dart';
import 'package:biblioteca/reserva_materiais.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
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
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff57886C)),
                  "MENU"),
            ),
            Column(children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EmprestimoMateriaisPage(
                                title: 'Página Inicial'),
                          ));
                    }),
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(350, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff57886C)),
                    ),
                    child: const Text("EMPRÉSTIMO")),
                const Padding(
                    padding: EdgeInsets.all(
                  5.0,
                )),
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
                          MaterialStateProperty.all<Size>(const Size(350, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff57886C)),
                    ),
                    child: const Text("DEVOLUÇÃO")),
                const Padding(
                    padding: EdgeInsets.all(
                  5.0,
                )),
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
                          MaterialStateProperty.all<Size>(const Size(350, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff57886C)),
                    ),
                    child: const Text("RESERVA")),
                const Padding(
                    padding: EdgeInsets.all(
                  5.0,
                )),
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
                          MaterialStateProperty.all<Size>(const Size(350, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff57886C)),
                    ),
                    child: const Text("RENOVAÇÃO")),
                const Padding(
                    padding: EdgeInsets.all(
                  5.0,
                )),
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
                          MaterialStateProperty.all<Size>(const Size(350, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff57886C)),
                    ),
                    child: const Text("MULTAS")),
                const Padding(
                    padding: EdgeInsets.all(
                  5.0,
                )),
                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const RelatoriosPage(title: 'Página Inicial'),
                          ));
                    }),
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(350, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff57886C)),
                    ),
                    child: const Text("RELATÓRIO")),
                const Padding(
                    padding: EdgeInsets.all(
                  30.0,
                )),
                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaginaInicialPage(
                                title: 'Página Inicial'),
                          ));
                    }),
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(150, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff57886C)),
                    ),
                    child: const Text("SAIR")),
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
