import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; // 10 imagenes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
            itemCount: imagesIds.length,
            itemBuilder: (BuildContext context, int index) {
              return FadeInImage(
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                  placeholder: const AssetImage('assets/jar-loading.gif'),
                  image: NetworkImage(
                      'https://picsum.photos/500/300?image=${imagesIds[index]}'));
            }),
      ),
    );
  }
}
