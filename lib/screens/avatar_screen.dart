import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Screen'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('JB', style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        backgroundImage: NetworkImage(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0c96D-ttQPYfVca4eItH0lbtlCFOBT9l60Q&usqp=CAU'),
        maxRadius: 110,
      )),
    );
  }
}
