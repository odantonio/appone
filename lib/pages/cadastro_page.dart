import 'package:appone/pages/pageview_pages/pagina1.dart';
import 'package:appone/pages/pageview_pages/pagina2.dart';
import 'package:appone/pages/pageview_pages/pagina3.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  int posicaoPagina = 0;
  // Fazendo o controller externo para ser chamado em outras partes
  final PageController _pageController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
        titleTextStyle:
            const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  posicaoPagina = value;
                });

                debugPrint(posicaoPagina.toString());
              },
              scrollDirection: axisDirectionToAxis(AxisDirection.left),
              dragStartBehavior: DragStartBehavior.start,
              pageSnapping: true,
              padEnds: true,
              children: const [
                Pagina1(),
                Pagina2(),
                Pagina3(),
              ],
            ),
          ),
          BottomNavigationBar(
              onTap: (value) {
                _pageController.jumpToPage(value);
              },
              currentIndex: posicaoPagina,
              items: const [
                BottomNavigationBarItem(
                    label: "Dados Pessoais", icon: Icon(Icons.person)),
                BottomNavigationBarItem(
                    label: "Endereço", icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                    label: "Homne", icon: Icon(Icons.confirmation_num)),
              ]),
        ],
      ),
    );
  }
}
