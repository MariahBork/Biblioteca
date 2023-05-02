import 'package:biblioteca/url_launcher/menu.dart';
import 'package:flutter/material.dart';

class CadastroUsuarioPage extends StatefulWidget {
  const CadastroUsuarioPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CadastroUsuarioPage> createState() => _CadastroUsuarioPageState();
}

class _CadastroUsuarioPageState extends State<CadastroUsuarioPage> {
  final List<String> identificationItems = [
    'USUÁRIO',
    'ADMINISTRADOR',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffc2d1b6),
      appBar: AppBar(
        title: const Text("Cadastro de Usuário"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
                style: TextStyle(
                  color: Color(0xff57886C),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                "CADASTRO"),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.person),
                hintText: 'NOME',
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
                prefixIcon: Icon(Icons.house),
                hintText: 'ENDEREÇO',
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
                prefixIcon: Icon(Icons.phone),
                hintText: 'TELEFONE',
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
                prefixIcon: Icon(Icons.category_rounded),
                hintText: 'CPF',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
              ))),
          const SizedBox(height: 30),
          DropdownButtonFormField(
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                isDense: true,
                contentPadding: EdgeInsets.all(20.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
              ),
              isExpanded: true,
              hint: const Text(
                'DETERMINE A SUA FUNÇÃO',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              items: identificationItems
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xff57886C),
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                  .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select Identification.';
                }
                return null;
              },
              onChanged: (value) {
                //Do something when changing the item if you want.
              },
              onSaved: (value) {
                selectedValue = value.toString();
              }),
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
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                  decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.https),
                hintText: 'CONFIRMAÇÃO SENHA',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
              ))),
          const Padding(
              padding: EdgeInsets.all(
            10.0,
          )),
          const SizedBox(height: 20),
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
                    Navigator.pop(context);
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
        ]),
      ),
    );
  }
}
