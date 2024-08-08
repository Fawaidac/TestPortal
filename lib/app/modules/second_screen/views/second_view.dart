import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/second_controller.dart';

class SecondView extends GetView<SecondController> {
  const SecondView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SecondView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
