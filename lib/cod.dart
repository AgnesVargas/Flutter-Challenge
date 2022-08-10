import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const OcultarVal(),
    );
  }
}

class OcultarVal extends StatefulWidget {
  const OcultarVal({Key? key}) : super(key: key);

  @override
  State<OcultarVal> createState() => MyHomePage();
}

class MyHomePage extends State<OcultarVal> {
  Widget listagemCrypto(
      String title, subtitle, trailing, double varDia, IconData icon) {
    CorVariacao() {
      if (varDia > 0) {
        return true;
      } else {
        return false;
      }
    }

    return ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Column(children: [
          Text(trailing),
          Container(
              child: Text(varDia.toString() + '%'),
              padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.green.shade100),
                  color:
                      CorVariacao() ? Colors.green[200] : Colors.red.shade100,
                  borderRadius: const BorderRadius.all(Radius.circular(15)))),
        ]));
  }

  String carteira = 'Carteira';
  String value = 'R\$ 1.000,00';
  String rend = '+R\$ 100,00';
  String cdi = '(100% do CDI)';
  String eth = 'ETH';
  String etherium = 'Etherium';
  String valEth = 'R\$0,00';
  double varDiaEth = 75;
  String btc = 'BTC';
  String bitcoin = 'Bitcoin';
  String valBtc = 'R\$1.000,00';
  double varDiaBtc = 75;
  String ltc = 'LTC';
  String litecoin = 'Litecoin';
  String valLtc = 'R\$0,00';
  double varDiaLtc = -0.7;
  String ocultarVal = '__________';
  bool alterarVal = true;

  funcaoOcultarVal() {
    if (alterarVal == true) {
      return value;
    } else {
      return ocultarVal;
    }
  }

  funcaoOcultarEthLtc() {
    if (alterarVal == true) {
      return valEth;
    } else {
      return ocultarVal;
    }
  }

  funcaoOcultarRend() {
    if (alterarVal == true) {
      return rend;
    } else {
      return ocultarVal;
    }
  }

  funcaoOcultarCdi() {
    if (alterarVal == true) {
      return cdi;
    } else {
      return ocultarVal;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: ("Home")),
            const BottomNavigationBarItem(
                icon: Icon(Icons.wallet_giftcard), label: ("Carteira")),
            const BottomNavigationBarItem(
                icon: Icon(Icons.move_to_inbox), label: ("Movimentações")),
          ],
        ),
        body: Align(
          alignment: Alignment.topLeft,
          child: ListView(children: <Widget>[
            const SizedBox(
              width: 10,
              height: 10,
            ),
            Row(children: [
              const SizedBox(
                width: 62,
              ),
              Text(
                carteira,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 33,
                ),
              ),
              const SizedBox(
                width: 70,
              ),
              IconButton(
                  icon: const Icon(Icons.remove_red_eye),
                  onPressed: () {
                    alterarVal = !alterarVal;
                    setState(() {
                      funcaoOcultarVal();
                    });
                  }),
            ]),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(65, 10, 0, 0),
                child: Text(
                  funcaoOcultarVal(),
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Row(children: <Widget>[
              const SizedBox(
                width: 10,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(55, 0, 0, 0),
                    child: Text(
                      funcaoOcultarRend(),
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  )),
              Text(
                funcaoOcultarCdi(),
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ]),
            Column(children: <Widget>[
              const SizedBox(
                width: 50,
                height: 30,
              ),
              listagemCrypto(
                  eth, etherium, funcaoOcultarEthLtc(), varDiaEth, Icons.money),
              listagemCrypto(
                  btc, bitcoin, funcaoOcultarVal(), varDiaBtc, Icons.money),
              listagemCrypto(
                  ltc, litecoin, funcaoOcultarEthLtc(), varDiaLtc, Icons.money),
            ])
          ]),
        ));
  }
}
