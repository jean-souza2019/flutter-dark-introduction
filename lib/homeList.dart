import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHomePageStateList extends StatefulWidget {
  const MyHomePageStateList({Key? key}) : super(key: key);

  @override
  State<MyHomePageStateList> createState() => _MyHomePageStateListState();
}

class _MyHomePageStateListState extends State<MyHomePageStateList> {
  List<String> times = [
    'Melgar',
    'Internacional',
    'Gremio',
    'Juventude',
    'Ituano',
    'Passo Fundo',
    'Gaúcho',
    'Avenida'
  ];

  List<String> melhores = [];

  void _sortNewTime() {
    var random = Random();
    int sorted = random.nextInt(times.length);

    setState(() {
      melhores.add(times[sorted]);
      times.removeAt(sorted);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('agua title constant'),
        actions: [
          IconButton(onPressed: _sortNewTime, icon: Icon(Icons.add_circle))
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) =>
              Text("${index + 1}) ${melhores[index]}"),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: melhores.length),
    );
  }
}
