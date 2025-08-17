import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Extra6View extends GetView {
  const Extra6View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extra6View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Extra6View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
