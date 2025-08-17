import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Extra4View extends GetView {
  const Extra4View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extra4View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Extra4View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
