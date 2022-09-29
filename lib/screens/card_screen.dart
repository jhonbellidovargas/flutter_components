import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Screen'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://www.xtrafondos.com/wallpapers/resized/casa-kame-de-dragon-ball-3963.jpg?s=large',
            title: 'Dragon Ball',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://images4.alphacoders.com/749/thumb-1920-749961.jpg',
            title: 'Goku',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://th.bing.com/th/id/OIP.FX3-Fay6rXYlXSQsddu3YgAAAA?pid=ImgDet&rs=1',
            title: 'Goku vs Jiren',
          ),
        ],
      ),
    );
  }
}
