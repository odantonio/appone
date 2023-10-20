import 'package:flutter/material.dart';

class RecuperaPage extends StatefulWidget {
  const RecuperaPage({super.key});

  @override
  State<RecuperaPage> createState() => _RecuperaPageState();
}

class _RecuperaPageState extends State<RecuperaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recuperação do Acesso"),
      ),
    );
  }
}
