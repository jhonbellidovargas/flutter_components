import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Daenerys Targaryen',
    'Jon Snow',
    'Arya Stark',
    'Sansa Stark',
    'Tyrion Lannister',
    'Cersei Lannister',
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 1'),
        ),
        body: ListView(
          children: [
            ...options.map((personaje) => ListTile(
                  title: Text(personaje),
                  subtitle: const Text('Subtitle'),
                  leading: const Icon(Icons.ac_unit),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('Tap en $personaje');
                  },
                )),
            // Divider(),
          ],
        ));
  }
}
