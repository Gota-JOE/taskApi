import 'package:get/get.dart';
import 'package:taskapi/screens/model/MainModel.dart';

import '../screens/services/main_services.dart';

class TestController extends GetxController {
  final list = <Products>[].obs;
  MainServices produt = MainServices();

  //final prodectList = [].obs;

  //final x = false.obs;

  @override
  void onInt()  {
    super.onInit();
     fetch();
  }

  fetch() async {
    //super.onInit();
    list.value = (await produt.fetchProdects())!; //prodectList.value =
    //update();
  }
}
