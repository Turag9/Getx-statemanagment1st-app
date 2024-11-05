import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controler/homescreencontroler.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final controller=Get.put(Homepagecontroler());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx((){
         //     print("build");
              return Text(controller.counter.toString());
            }),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
              ),
                onPressed: (){
                  controller.counter++;
            },
                child: Text("increase",style: TextStyle(
                  color: Colors.white
                ),)
            )
          ],
        ),
      ),
    );
  }
}
