import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Extra7View extends GetView {
  const Extra7View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extra7View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Extra7View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
