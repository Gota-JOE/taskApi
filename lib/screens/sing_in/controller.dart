import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../services/login_services.dart';

class LoginConteoller extends GetxController {
  final userNameController = TextEditingController();
  final passNameController = TextEditingController();
  final ser = LoginServices();

  login() async {
    await ser.login(Get.context!, userNameController.text, passNameController.text);
  }
}
