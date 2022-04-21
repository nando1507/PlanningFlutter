import 'package:flutter/material.dart';
import 'package:planningpoker/Screens/login_screen/login.dart';
import 'package:planningpoker/components/constants.dart';

class AppBarPadrao extends StatelessWidget with PreferredSizeWidget {
  final String entrada;
  const AppBarPadrao({
    Key? key,
    required this.entrada,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(entrada),
      actions: [
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(
                    entrada: "Planning",
                  ),
                ),
              );
            },
            child: const Icon(Icons.exit_to_app_sharp),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
