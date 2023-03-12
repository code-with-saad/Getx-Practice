import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:state_getx/controllers/home/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final HomeController homecontrol = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GetBuilder(
      //   init: homecontrol,
      //   builder: (context) => Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Text("${homecontrol.count}"),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       ElevatedButton(
      //         onPressed: () {
      //           homecontrol.increment();
      //         },
      //         child: Text("Increment")),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       ElevatedButton(
      //           onPressed: () {
      //             homecontrol.decrement();
      //           },
      //           child: Text("Decrement"))
      //     ],
      //   ),
      // ),)
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("${homecontrol.count}", style: TextStyle(
            fontSize: 20
          ),)),
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
                    homecontrol.navigatetoprofile();
                  },
                  child: Text("Go to Profile"))
          ],
        ),
      ),
    );
  }
}
