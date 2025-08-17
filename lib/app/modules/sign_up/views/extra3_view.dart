import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Extra3View extends GetView {
  const Extra3View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extra3View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Extra3View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
