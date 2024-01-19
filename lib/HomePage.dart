import 'package:flutter/material.dart';
import 'package:flutter_course/controllers/tap_controller.dart';
import 'package:flutter_course/first_page.dart';
import 'package:flutter_course/second_page.dart';
import 'package:flutter_course/third_page.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(
              builder: (tapController) {
                return Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.all(20),
                  height: 100,
                  child: Center(
                    child: Text(tapController.x.toString(),
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue[300],
                  ),
                );
              },
            ),
            GestureDetector(
              onTap: () {
                controller.increaseX();
              },
              child: Container(
                width: double.maxFinite,
                margin: const EdgeInsets.all(20),
                height: 100,
                child: Center(
                  child: Text('Increase',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[300],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => FirstPage());
              },
              child: Container(
                width: double.maxFinite,
                margin: const EdgeInsets.all(20),
                height: 100,
                child: Center(
                  child: Text('Go to First Page',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[300],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => SecondPage());
              },
              child: Container(
                width: double.maxFinite,
                margin: const EdgeInsets.all(20),
                height: 100,
                child: Center(
                  child: Text('Go to Second Page',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[300],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => ThirdPage());
              },
              child: Container(
                width: double.maxFinite,
                margin: const EdgeInsets.all(20),
                height: 100,
                child: Center(
                  child: Text('Go to Third Page',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[300],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
