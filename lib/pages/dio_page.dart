import 'package:flutter/material.dart';

class DioLoginPage extends StatefulWidget {
  const DioLoginPage({super.key});

  @override
  State<DioLoginPage> createState() => _DioLoginPageState();
}

class _DioLoginPageState extends State<DioLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 16, 26),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: SizedBox(
                child: Image(
                  image: NetworkImage(
                      "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                      scale: 1.0),
                  isAntiAlias: true,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                      child: SizedBox(
                        height: 24,
                        child: TextField(
                          style: TextStyle(
                              color: Color.fromARGB(255, 216, 209, 209),
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: "e-Mail",
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 14),
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
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                      child: SizedBox(
                        height: 30,
                        child: TextField(
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 216, 209, 209)),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                            hintText: "Senha",
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 14),
                            prefixIcon: Icon(Icons.lock_outline,
                                color: Color.fromARGB(255, 144, 7, 164)),
                            suffixIcon: Icon(Icons.visibility_off_outlined,
                                color: Color.fromARGB(255, 144, 7, 164)),
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
                                    const Color.fromARGB(255, 90, 104, 184)),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: () {},
                            child: const Text("Entrar")),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        "Esqueci Minha Senha",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 183, 183, 65)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Criar Conta",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 23, 142, 27)),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
