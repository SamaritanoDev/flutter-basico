import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['Desktop', 'Web', 'Android', 'iOS', 'Linux'];
  
  
   const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Color colorpink = const Color.fromARGB(255, 241, 59, 171);
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView2'),
          backgroundColor: colorpink,
          elevation: 0,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () {
              final game = options[index];
              print(game);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
