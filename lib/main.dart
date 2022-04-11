import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planningpoker/components/cartao.dart';
import 'package:planningpoker/constants.dart';

import 'menu/menu_planing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planning Poker',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: secondaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ).apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: const MyHomePage(title: 'Planning'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                cartao(
                  tamanho: 'PP',
                ),
                cartao(
                  tamanho: 'P',
                ),
                cartao(
                  tamanho: 'M',
                ),
                cartao(
                  tamanho: 'G',
                ),
                cartao(
                  tamanho: 'GG',
                ),
              ],
            ),
            const Text(
              'Pressione o Botão',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
