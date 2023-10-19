# Criando a Estrutura de um Programa Flutter

Vamos criar aqui a __estrutura de um programa em Flutter__ para entender o conceito.

## Definição da estrutura e comportamento das telas do programa

### Função principal

``` Dart
void main() {
  runApp(const MyApp());
}
```

O Programa, Inicialização de Recursos devem ser executados em runApp.
const = constant. Passado quando o construtor ou widget é do tipo stateless ou imutável.

### Classe Principal do Programa

``` DART
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp é a classe responsável por criar os Widgets
    // Ao menos 1 parâmetro da MaterialApp deve ser passado, no caso home, que é tela principal.
    // Outras telas devem ser instanciandas aqui como rotas.
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
```

### Primeira Tela

Classe HomePage é um exemplo de como é a construção das telas.

HomePage é a tela principal do programa. Ao abrir o programa, é a tela mostrada ao usuário.

É do tipo Statefull, por isso, precisamos gerenciar os estados dos objetos (variáveis, botões, ícones, menus) que são exibidos nela.

``` Dart
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// Gerenciando estado da Stateful
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar é uma propriedade do Scaffold, responsável por desenhar uma barra na parte superior do widget. A o método AppBar() pode ser passado, pois ele já preenche os pré-requisitos do appBar 
      appBar: AppBar();
    );
  }
}
```

## Tipos Básicos de Widgets

### Stateless widget

Estático, ou seja, não temos como gerenciar o estado dele.
Este tipo de widget não possibilita alterações dinâmicas, entenda-o como algo completamente estático. Eles são amplamente utilizados para a criação de estruturas não mutáveis nos aplicativos (telas, menus, imagens etc.), ou seja, tudo que não envolva entradas de dados dos usuários, acessos a APIs e coisas que mudem ao longo do processo.

### Stateful widget

É completamente dinâmico e nos dá o poder de torná-lo mutável através da gerência de estados. O estado de um elemento basicamente controla o que é mutável nele.

É muito importante, sempre que alterar o valor de uma variável ou campo qualquer que seja, chamar o método ``setState()`` e, dentro dele, atribuir esse valor da alteração. Alterar somente a variável não fará com que a alteração se reflita na tela. O ``setState()`` comunica ao Flutter que ele precisa reconstruir a tela para que a alteração seja exibida corretamente.

### Scaffold e Container são Widgets Pais

#### Scaffold

O Scaffold é o widget do MaterialApp que nos fornece propriedades predefinidas como AppBar, Body, Bottom Navigation, Floating Action e Persistent Footer. O Scaffold dará a aparência da _Material (Material UI) na tela.
O Scaffold é o widget do MaterialApp que nos fornece propriedades predefinidas, como AppBar, Body, Bottom Navigation, Floating Action e Persistent Footer. O Scaffold dará a aparência da _Material (Material UI)_ na tela.

Idealmente, no MaterialApp cada página/tela consistirá no widget pai como uma estrutura. Se não fornecermos o Scaffold como widget pai, não haverá aparência da _Material_ no Material App.

> Link útil para o widget Scaffold:
> Scaffold Class: <https://api.flutter.dev/flutter/material/Scaffold-class.html>
> App Samples: <https://flutter.dev/docs/catalog/samples/Scaffold>

#### Container

O Container é um widget básico/comum no Flutter, o qual conterá outros widgets. O Container é usado para decorar seu widget filho. Podemos fornecer propriedades como bordas, preenchimento, alinhamento, altura, largura, etc. A classe Container conterá apenas um widget filho.

> Link útil para o Container Widget:
> Container Class: <https://api.flutter.dev/flutter/widgets/Container-class.html>
