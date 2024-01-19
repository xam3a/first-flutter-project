import 'package:flutter/material.dart';
import 'package:flutter_course/HomePage.dart';
import 'package:flutter_course/controllers/tap_controller.dart';
import 'package:flutter_course/third_page.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: (Get.back),
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Get.to(() => MyHomePage());
              },
              child: Container(
                width: double.maxFinite,
                height: 100,
                margin: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    Get.find<TapController>().x.toString(),
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => ThirdPage());
              },
              child: Container(
                width: double.maxFinite,
                height: 100,
                margin: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    'Go to Third Page',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
