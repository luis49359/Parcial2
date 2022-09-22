import 'package:clonespotify/json/Listas.dart';
import 'package:clonespotify/temas/colores.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int menuactivo = 0;
  int menuactivo2 = 0;
  List lista = comidas[0]["Menu"];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: barraSpotApp(),
      body: cuerpoSpot(),
    );
  }

  barraSpotApp() {
    return AppBar(
        backgroundColor: background,
        elevation: 0,
        toolbarHeight: 140,
        title: Center(
          child: Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/logo.jpg"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
          ),
        ));
  }

  cuerpoSpot() {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: const TextField(
            maxLines: 1,
            decoration: InputDecoration(
                hintText: "Busca tu combo",
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(100.0)),
                )),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 10),
            child: Text("Ventas"),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(
              children: List.generate(mainMenu.length, (index) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          menuactivo = index;
                          lista = comidas[index]["Menu"];
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color: menuactivo == index
                                        ? principal
                                        : notSelected)),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      iconosMenu[index],
                                      color: menuactivo == index
                                          ? principal
                                          : notSelected,
                                    ),
                                  ),
                                  SizedBox(height: 50),
                                  Container(
                                    child: Text(
                                      mainMenu[index],
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: menuactivo == index
                                            ? principal
                                            : notSelected,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(
              children: List.generate(lista.length, (index) {
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          menuactivo2 = index;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: menuactivo2 == index
                                  ? principal
                                  : notSelected,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(height: 50),
                                      Container(
                                        child: Text(
                                          lista[index]["title"],
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: menuactivo2 == index
                                                ? blanco
                                                : negro,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(height: 50),
                                      Container(
                                        width: 180,
                                        height: 180,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    lista[index]['image']),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(height: 50),
                                      Container(
                                        child: Text(
                                          lista[index]["price"],
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: menuactivo2 == index
                                                ? blanco
                                                : negro,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ]),
    );
  }
}
