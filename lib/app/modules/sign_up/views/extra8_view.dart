import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Extra8View extends GetView {
  const Extra8View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extra8View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Extra8View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
