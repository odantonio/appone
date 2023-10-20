import 'package:appone/pages/cadastro_page.dart';
import 'package:appone/pages/main_page.dart';
import 'package:appone/pages/recuperar_senha_page.dart';
import 'package:flutter/material.dart';

class DioLoginPage extends StatefulWidget {
  const DioLoginPage({super.key});

  @override
  State<DioLoginPage> createState() => _DioLoginPageState();
}

class _DioLoginPageState extends State<DioLoginPage> {
  // TextEditingControler
  // sempre instanciar
  // usado para armazenar o valor de uma variável.
  final TextEditingController _emailController =
      TextEditingController(text: "email@email.com");
  final TextEditingController _senhaController = TextEditingController();

  /// visibilityOption inicia como TRUE, pois o componente por padrão oculta a senha
  bool visibilityOption = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 18, 16, 26),
        body: SingleChildScrollView(
            child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: Container(
            width: double.infinity,
            margin:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  child: SizedBox(
                    //width: 200,
                    child: Image(
                      image: NetworkImage(
                          "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                          scale: 1.0),
                      isAntiAlias: true,
                    ),
                  ),
                ),
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(
                    "Já tem cadastro?",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Faça seu login e make the change_",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 16.0),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 2.0),
                        //alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 4.0),
                          child: SizedBox(
                            height: 30,
                            child: TextField(
                              controller: _emailController,
                              onChanged: (value) {
                                debugPrint("O que está sendo digitado: $value");
                              },
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 216, 209, 209),
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintText: "e-Mail",
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 14),
                                prefixIcon: Icon(Icons.email_outlined,
                                    color: Color.fromARGB(255, 144, 7, 164)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 2.0),
                        //alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 4.0),
                          child: SizedBox(
                            height: 30,
                            child: TextField(
                              // o texto é ou não visivel dependendo de visibilityOption
                              obscureText: visibilityOption,
                              controller: _senhaController,
                              onChanged: (value) {
                                debugPrint("O que está sendo digitado: $value");
                              },
                              style: const TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 216, 209, 209)),
                              decoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                hintText: "Senha",
                                hintStyle: const TextStyle(
                                    color: Colors.white, fontSize: 14),
                                prefixIcon: const Icon(Icons.lock_outline,
                                    color: Color.fromARGB(255, 144, 7, 164)),

                                /// Método 1 - InkWell
                                ///
                                suffixIcon: InkWell(
                                  onTap: () {
                                    // Com o setState, ao clicar no ícone o estado é alterado
                                    setState(() {
                                      visibilityOption = !visibilityOption;
                                    });
                                  },

                                  /// Método 2 - GestureDetector
                                  ///
                                  /// O GestureDetector possui uma gama de propriedades muito maior
                                  ///
                                  // suffix: GestureDetector(
                                  //   onTap: () {
                                  //     setState(() {
                                  //       visibilityOption = !visibilityOption;
                                  //     });
                                  //   },
                                  child: Icon(
                                      visibilityOption
                                          ? Icons.visibility_off_outlined
                                          : Icons.visibility,
                                      color: const Color.fromARGB(
                                          255, 144, 7, 164)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 28.0),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 4.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0))),
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(
                                            255, 90, 104, 184)),
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.white)),
                                onPressed: () {
                                  if (_emailController.text !=
                                          "email@email.com" &&
                                      _senhaController.text != "") {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                "Login Realisado com Sucesso!")));
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MainPage()));
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                "Falha ao realisar login")));
                                  }
                                  // Lendo os valores dos controllers com o método .text
                                  debugPrint(
                                      "Controle do email: ${_emailController.text}");
                                  debugPrint(
                                      "Controle da senha: ${_senhaController.text}");
                                },
                                child: const Text("Entrar")),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RecuperaPage()));
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              "Esqueci Minha Senha",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 183, 183, 65)),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CadastroPage()));
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Criar Conta",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  color: Color.fromARGB(255, 23, 142, 27)),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
