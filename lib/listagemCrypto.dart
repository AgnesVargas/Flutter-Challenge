import 'package:flutter/material.dart';
import 'valoresTela.dart';

class MyHomePageWidget extends StatefulWidget {
  const MyHomePageWidget({Key? key}) : super(key: key);

  @override
  State<MyHomePageWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePageWidget> {
  listagemCrypto(
      String title, subtitle, trailing, double varDia, IconData icon) {
    alterarCorVariacaoDia() {
      if (varDia > 0) {
        return true;
      } else {
        return false;
      }
    }

    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/home');
        },
        child: ListTile(
            leading: Icon(icon),
            title: Text(title),
            subtitle: Text(subtitle),
            trailing: Column(children: [
              Text(trailing),
              Container(
                  child: Text(varDia.toString() + '%'),
                  padding: const EdgeInsets.fromLTRB(15, 5, 10, 0),
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: Colors.green.shade100),
                      color: alterarCorVariacaoDia()
                          ? Colors.green[200]
                          : Colors.red.shade100,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15)))),
            ])));
  }

  @override
  Widget build(BuildContext context) {
    InkWell(
      onTap: () => setState(() => Text('Home')){
        
      });
    
  child:Ink(
             child: Center(child: Text("Home"),));
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet_giftcard), label: ("Carteira")),
            BottomNavigationBarItem(
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
                      alterarValor = !alterarValor;
                      setState(() {
                        ocultarValor();
                      });
                    }),
              ]),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(65, 10, 0, 0),
                  child: Text(
                    ocultarValor(),
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
                        ocultarValor(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    )),
                Text(
                  ocultarValor(),
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                // ]),
                Column(children: <Widget>[
                  const SizedBox(
                    width: 50,
                    height: 30,
                  ),
                  listagemCrypto(eth, etherium, ocultarValor(), variacaoDiaEth,
                      Icons.money),
                  listagemCrypto(btc, bitcoin, ocultarValor(), variacaoDiaBtc,
                      Icons.money),
                  listagemCrypto(ltc, litecoin, ocultarValor(), variacaoDiaLtc,
                      Icons.money),
                ])
              ]),
            ])));
  }
}
