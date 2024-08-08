import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/third_controller.dart';

class ThirdView extends GetView<ThirdController> {
  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print('call');
        controller.fetchUsers();
      } else {
        print('dont call');
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.isLoading.value && controller.users.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.isEmpty.value && controller.users.isEmpty) {
          return const Center(child: Text('No users found.'));
        }

        return ListView.builder(
          controller: _scrollController,
          itemCount: controller.users.length + 1,
          itemBuilder: (context, index) {
            if (index == controller.users.length) {
              return controller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : const SizedBox.shrink();
            }
            final user = controller.users[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.avatar),
                ),
                title: Text('${user.firstName} ${user.lastName}'),
                subtitle: Text(user.email),
                onTap: () => controller.selectUser(user),
              ),
            );
          },
        );
      }),
    );
  }
}
