import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Extra5View extends GetView {
  const Extra5View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extra5View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Extra5View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
