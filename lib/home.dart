import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<Feature> features = [
    Feature(
      title: "Bitcoin",
      color: Colors.grey,
      data: [0.9, 0.6, 0.48, 0.36, 0.30],
    ),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Detalhes"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left_outlined),
          onPressed: () {
            Navigator.pushNamed(context, "/carteiras");
          },
        ),
      ),
      body: Column(children: <Widget>[
        const SizedBox(
          width: 10,
          height: 10,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        Row(children: [
          const SizedBox(
            width: 62,
          ),
          const Text(
            "Moeda Etherium",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 33,
            ),
          ),
          LineGraph(
            features: features,
            size: const Size(400, 200),
            labelX: const ["", "", "", "", ""],
            labelY: const [
              '0,00R\$',
              '0,50R\$',
              '1,00R\$',
              '1,50R\$',
              '2,00R\$'
            ],
            showDescription: false,
            graphColor: Colors.black,
          ),
          const Text(
            "Informações",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 33,
            ),
          ),
          const ListTile(
            title: Text("Bitcoin"),
            subtitle: Text("Valor Atual"),
            trailing: Text("R\$ 20.000,00"),
          ),
          const ListTile(
            title: Text("Cap de Mercado"),
            trailing: Text("+5%"),
          ),
          const ListTile(
            title: Text("Valor Mínimo"),
            trailing: Text("R\$ 0,02"),
          ),
          const ListTile(
            title: Text("Valor Máximo"),
            trailing: Text("R\$ 0,47"),
          ),
        ]),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              maximumSize: const Size(30, 20), primary: Colors.pink),
          onPressed: () {
            Navigator.pushNamed(context, "/movimentaões");
          },
          child: const Text('Converter Moeda'),
        ),
      ]));
}
