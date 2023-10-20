import 'package:appone/services/random_number_gen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override

  /// Determiando o estado da HomePage: _HomePageState
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int aleatorio = 0;
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar é uma propriedade do Scaffold, responsável por desenhar uma barra na parte superior do widget. A o método AppBar() pode ser passado, pois ele já preenche os pré-requisitos do appBar
      appBar: AppBar(

          /// Título exibido no AppBar()
          title: const Text("AppOne")),
      // Body, o corpo do Scaffold
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40,
              width: 200,
              child: Text("Olá AppOner!"),
            ),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Text("Welcomme to Your Final App."),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.lightBlue,
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Número gerado foi: $aleatorio"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blueAccent,
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Você clicou $contador vezes."),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.tealAccent,
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Você clicou $contador vezes."),
                  ),
                )
              ],
            ),
          ],
        ),
      ),

      /// Acrescentando botão: FloatingActionButton
      /// FloatingActionButton onPressed como único parâmetro obrigatório
      floatingActionButton: FloatingActionButton(
        /// Passando um Ícone
        /// ``` dart
        /// child: const Icon(IconData),
        /// ``
        child: const Icon(Icons.south_america),

        /// ação vazia {}
        onPressed: () {
          /// SetState informa que um estado novo foi ajustado e precisa refazer o build desta instância ( Widget build(BuildContext context) )
          setState(() {
            aleatorio = GeradorRandom.geradorNumeroAleatorio(1000);
            contador = contador + 1;
          });

          /// Print disponível apenas quando em debug mode
          debugPrint(aleatorio.toString());
          debugPrint(contador.toString());
        },
      ),
    );
  }
}
