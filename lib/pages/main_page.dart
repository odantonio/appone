import 'package:appone/pages/cadastro_page.dart';
import 'package:appone/pages/dio_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("AppOne")),
        drawer: Drawer(
          width: 200,
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 16.0),
                      child: Text("Menu"),
                    ),
                  ],
                ),
                //Divider(),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CadastroPage()));
                  },
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                    child: Text("Dados Cadastrais"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CadastroPage()));
                  },
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                    child: Text("Configurações"),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CadastroPage()));
                  },
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                    child: Text("Termos de Uso"),
                  ),
                ),
                //Divider(),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DioLoginPage()));
                  },
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
                    child: Text("Sair"),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
