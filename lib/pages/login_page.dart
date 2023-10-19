import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 244, 244),
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text("AppOne"),
      //   toolbarHeight: 80,
      // ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: SizedBox(
                  child: Image(
                    image: AssetImage('assets/images/logo_pequeno.png'),
                    height: 50,
                    width: 150,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 4.0),
                    alignment: Alignment.center,
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                      child: SizedBox(
                          height: 20,
                          child: Row(
                            children: [
                              Expanded(flex: 2, child: Text("digite email:")),
                              Expanded(flex: 3, child: Text("Email"))
                            ],
                          )),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 4.0),
                    alignment: Alignment.center,
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                      child: SizedBox(
                          height: 20,
                          child: Row(
                            children: [
                              Expanded(flex: 2, child: Text("digite senha:")),
                              Expanded(flex: 3, child: Text("Senha"))
                            ],
                          )),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.amber,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 16.0),
                    alignment: Alignment.center,
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                      child: SizedBox(height: 20, child: Text("botão login")),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 16.0),
                      alignment: Alignment.center,
                      child: const Text("Criar Conta")),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
