import 'package:flutter/material.dart';
import 'package:grinch_clean/ui/page/jedis_page.dart';

import 'data/repository/repository.dart';

void main() {
  Repository.init();
  runApp(JedisApp());
}

class JedisApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grinch Clean',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JedisPage(),
    );
  }
}
