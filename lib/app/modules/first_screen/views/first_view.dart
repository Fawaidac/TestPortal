import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tetsportal_suitmedia/res/colors/app_colors.dart';
import 'package:tetsportal_suitmedia/res/fonts/app_fonts.dart';
import 'package:tetsportal_suitmedia/res/textfields/app_textfield.dart';
import '../controllers/first_controller.dart';

class FirstView extends GetView<FirstController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: 120,
                margin: const EdgeInsets.only(bottom: 50),
                decoration: BoxDecoration(
                    color: white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(100)),
                child: Center(
                  child: Icon(
                    Icons.person_add_alt_1,
                    color: white,
                    size: 30,
                  ),
                ),
              ),
              AppTextfield(
                label: "Name",
                onChanged: (value) => controller.name.value = value,
              ),
              const SizedBox(
                height: 15,
              ),
              AppTextfield(
                label: "Palindrome",
                onChanged: (value) => controller.sentence.value = value,
              ),
              Container(
                height: 48,
                margin: const EdgeInsets.only(top: 25),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () => controller.checkPalindrome(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonBackground,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "CHECK",
                      style: AppFonts.poppins(fontSize: 14, color: white),
                    )),
              ),
              Container(
                height: 48,
                margin: const EdgeInsets.only(top: 8),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonBackground,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "NEXT",
                      style: AppFonts.poppins(fontSize: 14, color: white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
