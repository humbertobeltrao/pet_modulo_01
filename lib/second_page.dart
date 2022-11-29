import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modulo_01/pessoa.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, required this.values}) : super(key: key);

  final List<Pessoa> values;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Módulo 01 - Second Page'),
      ),
      body: ListView.builder(
        itemCount: values.length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.all(5.0),
              child: ListTile(
                title: Text(values[index].nome),
                subtitle: Text(values[index].peso.toString()),
              ));
        },
      ),
    );
  }
}
