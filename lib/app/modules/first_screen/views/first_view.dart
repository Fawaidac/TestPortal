import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/first_controller.dart';

class FirstView extends GetView<FirstController> {
  FirstView({Key? key}) : super(key: key);

  @override
  final fController = Get.put(FirstController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'FirstView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
