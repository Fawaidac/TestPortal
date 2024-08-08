import 'dart:convert';

import 'package:get/get.dart';

import '../../../data/user_models.dart';
import 'package:http/http.dart' as http;

class ThirdController extends GetxController {
  var users = <User>[].obs;
  var isLoading = false.obs;
  var isEmpty = false.obs;
  var currentPage = 1.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    if (isLoading.value) return;
    isLoading.value = true;

    final response = await http.get(Uri.parse(
        'https://reqres.in/api/users?page=${currentPage.value}&per_page=10'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List<User> newUsers =
          (data['data'] as List).map((user) => User.fromJson(user)).toList();

      if (newUsers.isEmpty) {
        isEmpty.value = true;
      } else {
        users.addAll(newUsers);
        isEmpty.value = false;
        currentPage.value++;
      }
    } else {
      isEmpty.value = true;
    }
    isLoading.value = false;
  }
}
