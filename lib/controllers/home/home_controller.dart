import 'package:get/get.dart';
import 'package:state_getx/views/Profile/profile_view.dart';

class HomeController extends GetxController {
  var count = 0.obs;

  // increment() {
  //   count = count + 1;
  //   update();
  // }

  // decrement() {
  //   count = count - 1;
  //   update();
  // }
  navigatetoprofile() {
    Get.to(ProfileView());
  }

  incrementobs() {
    count = count + 1;
  }

  decrementobs() {
    count = count - 1;
  }
}
