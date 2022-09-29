import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(Icons.photo_album, color: AppTheme.primary),
          title: Text('Soy el titulo de esta tarjeta'),
          subtitle: Text(
              'Soy el subtitulo de esta tarjeta que es muy larga para que se vea como se comporta el texto dentro de la tarjeta'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Cancelar')),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Ok',
                  )),
            ],
          ),
        )
      ],
    ));
  }
}
