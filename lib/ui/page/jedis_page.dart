import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grinch_clean/ui/controller/jedi_controller.dart';

class JedisPage extends StatelessWidget {
  final controller = JediController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hola jedis')),
      body: Obx(() {
        var jedis = controller.jedis.value;

        return ListView.builder(
          itemCount: jedis.length,
          itemBuilder: (context, index) {
            return Text(jedis[index].name);
          },
        );
      }),
    );
  }
}
