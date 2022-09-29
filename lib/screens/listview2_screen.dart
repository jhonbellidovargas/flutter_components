import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Daenerys Targaryen',
    'Jon Snow',
    'Arya Stark',
    'Sansa Stark',
    'Tyrion Lannister',
    'Cersei Lannister',
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Tipo 2'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(options[index]),
              subtitle: Text(options[index]),
              leading: const Icon(Icons.ac_unit),
              trailing:
                  const Icon(Icons.keyboard_arrow_right, color: Colors.blue),
              onTap: () {
                final person = options[index];
                print('Tap en ${options[index]}');
              },
            );
          },
          separatorBuilder: (_, __) {
            return const Divider();
          },
        ));
  }
}
