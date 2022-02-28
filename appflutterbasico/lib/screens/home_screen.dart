import 'package:appflutterbasico/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          backgroundColor: colorjade,
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                trailing: const Icon(Icons.favorite),
                title: const Text('nombre ruta'),
                onTap: () {
                  //final route = MaterialPageRoute(
                  //  builder: (context) => const ListView1Screen()
                  //);
                  //Navigator.push(context, route );
                  Navigator.pushNamed(context, '/home');
                }),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 100));
  }
}
