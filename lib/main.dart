import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planningpoker/Screens/login_screen/login.dart';
import 'package:planningpoker/components/constants.dart';
import 'package:planningpoker/models/login.dart';
import 'package:planningpoker/database/dao/login_dao.dart';

void main() {
  runApp(const MyApp());

  LoginDao logDao = LoginDao();

  Login login = Login(
    0,
    "ADMIN",
    "ADMIN",
    "Bareno",
    DateTime.now(),
  );

  logDao.salvar(login);
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
    //if (LoginDao.Logar(Emai)) {}
    return LoginScreen(entrada: widget.title);
  }
}
