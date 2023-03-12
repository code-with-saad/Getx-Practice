import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:state_getx/controllers/home/home_controller.dart';
import 'package:state_getx/controllers/profile/profile_controller.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});
  final HomeController homecontrol = Get.put(HomeController());
  final ProfileController profilecontrol = ProfileController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => 
          Text("${homecontrol.count}", style: TextStyle(
            fontSize: 20
          ),),
          ),
          SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  homecontrol.incrementobs();
                },
                child: Text("Increment")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    homecontrol.decrementobs();
                  },
                  child: Text("Decrement")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    profilecontrol.navigatetohome();
                  },
                  child: Text("Go to Home"))
        ],
      )),
    );
  }
}
