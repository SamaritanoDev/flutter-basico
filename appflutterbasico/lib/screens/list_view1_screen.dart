import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Desktop','Web','Android','iOS','Linux'];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView1')
        ),
        body: ListView(
          children: [
            ...options.map(
              (flutter) => ListTile(
                title: Text(flutter),
                trailing: const Icon(Icons.favorite),
              )
            ).toList(),
          ],
        ));
  }
}
