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
            const Expanded(
              child: Text(""),
              flex: 5,
            ),
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: verde,
                    borderRadius: BorderRadius.circular(defaultPadding),
                    border: Border(
                      left: BorderSide(
                        //
                        color: Colors.white,
                        width: 3.0,
                      ),
                      top: BorderSide(
                        //
                        color: Colors.white,
                        width: 3.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Expanded(
              child: Text(""),
              flex: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Cartao(
                  tamanho: 'PP',
                ),
                Cartao(
                  tamanho: 'P',
                ),
                Cartao(
                  tamanho: 'M',
                ),
                Cartao(
                  tamanho: 'G',
                ),
                Cartao(
                  tamanho: 'GG',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
