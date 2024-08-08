import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tetsportal_suitmedia/res/colors/app_colors.dart';
import 'package:tetsportal_suitmedia/res/fonts/app_fonts.dart';

import '../../../routes/app_pages.dart';
import '../controllers/second_controller.dart';

class SecondView extends GetView<SecondController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wellcome',
              style: AppFonts.poppins(fontSize: 12, color: black),
            ),
            Obx(
              () {
                return Text(
                  controller.name.value,
                  style: AppFonts.poppins(
                      fontSize: 14, color: black, fontWeight: FontWeight.bold),
                );
              },
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Obx(() {
                  return Text(
                    controller.selectedUser.value,
                    textAlign: TextAlign.center,
                    style: AppFonts.poppins(
                        fontSize: 20,
                        color: black,
                        fontWeight: FontWeight.bold),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 8),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
            onPressed: () async {
              final selectedUserName = await Get.toNamed(Routes.THIRD);
              if (selectedUserName != null) {
                controller.selectedUser.value = selectedUserName;
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonBackground,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              "Choose a user",
              style: AppFonts.poppins(fontSize: 14, color: white),
            )),
      ),
    );
  }
}
