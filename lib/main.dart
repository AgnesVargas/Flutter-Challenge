import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/home.dart';
import 'package:helloworld/movimentacoes.dart';
import 'listagemCrypto.dart';

void main() => runApp(const MyWidget());

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.pink),
        initialRoute: '/carteiras',
        routes: {
          '/carteiras': (context) => const MyHomePageWidget(),
          '/home': (context) => Home(),
          '/movimentacoes': (context) => const Movimentacoes(),
        });
  }
}
