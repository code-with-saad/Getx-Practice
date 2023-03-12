import 'package:get/get.dart';
import 'package:state_getx/views/home/home_view.dart';

class ProfileController extends GetxController {
  navigatetoback() {
    Get.back();
  }
  navigatetohome() {
    Get.to(HomeView());
  }
}
