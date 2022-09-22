import 'package:flutter/material.dart';
import 'Home.dart';

class Contenedores extends StatefulWidget {
  Contenedores({Key? key}) : super(key: key);

  @override
  State<Contenedores> createState() => _ContenedoresState();
}

class _ContenedoresState extends State<Contenedores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: spotBody(),
    );
  }

  Widget spotBody() {
    return IndexedStack(children: [Home()]);
  }
}
