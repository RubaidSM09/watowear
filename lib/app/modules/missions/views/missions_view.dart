import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/missions_controller.dart';

class MissionsView extends GetView<MissionsController> {
  const MissionsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MissionsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MissionsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
