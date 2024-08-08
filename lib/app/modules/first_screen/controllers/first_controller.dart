import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class FirstController extends GetxController {
  var name = ''.obs;
  var sentence = ''.obs;

  bool isPalindrome(String sentence) {
    final cleanedSentence =
        sentence.replaceAll(RegExp(r'\\s+'), '').toLowerCase();
    final reversedSentence = cleanedSentence.split('').reversed.join('');
    return cleanedSentence == reversedSentence;
  }

  void checkPalindrome() {
    final isPalindromeResult = isPalindrome(sentence.value);
    Get.defaultDialog(
      title: 'Result',
      middleText: isPalindromeResult ? 'isPalindrome' : 'not palindrome',
      textConfirm: 'OK',
      onConfirm: () => Get.back(),
    );
  }

  void goToSecondScreen() {
    Get.to(Routes.SECOND);
  }
}
