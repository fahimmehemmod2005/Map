import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_create_controller.dart';

class UserCreateView extends GetView<UserCreateController> {
  const UserCreateView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UserCreateView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'UserCreateView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
