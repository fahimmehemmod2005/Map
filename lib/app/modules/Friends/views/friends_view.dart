import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {
  const FriendsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'FriendsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
