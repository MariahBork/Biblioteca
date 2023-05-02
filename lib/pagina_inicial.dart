import 'package:biblioteca/cadastro_usuario.dart';
import 'package:biblioteca/url_launcher/menu.dart';
import 'package:flutter/material.dart';

class PaginaInicialPage extends StatefulWidget {
  const PaginaInicialPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<PaginaInicialPage> createState() => _PaginaInicialPageState();
}

class _PaginaInicialPageState extends State<PaginaInicialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc2d1b6),
      appBar: AppBar(
        leading: const Icon(Icons.dehaze),
        actions: [
          IconButton(
            icon: const Icon(Icons.language),
            onPressed: () {
              // ação quando o usuário clica no ícone de busca
            },
          ),
          IconButton(
            icon: const Icon(Icons.person, size: 25, color: Colors.white),
            onPressed: () {
              // ação quando o usuário clica no ícone de configurações
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Transform.scale(
                scale: 1.5,
                child: Image.asset(
                  'assets/image/world_library.png',
                )),
            const Padding(
              padding: EdgeInsets.all(
                60.0,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'NÚMERO DO DOCUMENTO OU E-MAIL CADASTRADO',
                  prefixIcon: Icon(Icons.search),
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
                10.0,
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                    decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.https),
                  hintText: 'SENHA',
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
              ),
            ),
            Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const MenuPage(title: 'Página Inicial'),
                          ));
                    }),
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(150, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff57886C)),
                    ),
                    child: const Text("ENTRAR")),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CadastroUsuarioPage(
                                title: 'Página Inicial'),
                          ));
                    }),
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(150, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff57886C)),
                    ),
                    child: const Text("CADASTRE-SE")),
              ]),
            ]),
          ],
        ),
      ),
    );
  }
}
