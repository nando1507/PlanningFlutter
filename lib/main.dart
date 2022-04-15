import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planningpoker/Screens/loginscreen/login.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Menu(),
      appBar: AppBar(
        title: Text(widget.title),

        // leading: IconButton(
        //   icon: const Icon(Icons.exit_to_app),
        //   onPressed: () {
        //     Scaffold.of(context).openDrawer();
        //   },
        //   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        // ),
      ),
      //body: const PlanningScreen(),
      body: const LoginScreen(),
    );
  }
}
