import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_course/HomePage.dart';
import 'package:flutter_course/controllers/list_controller.dart';
import 'package:flutter_course/controllers/tap_controller.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    ListController listController = Get.put(ListController());
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                width: double.maxFinite,
                height: 100,
                margin: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    'Total Value = ' + Get.find<TapController>().z.toString(),
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
              ),
            ),
            Obx(
              () => Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    margin: const EdgeInsets.all(20),
                    child: Center(
                      child: Text(
                        'Value Y = ' +
                            Get.find<TapController>().y.value.toString(),
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(() => MyHomePage());
              },
              child: Container(
                width: double.maxFinite,
                margin: const EdgeInsets.all(20),
                height: 100,
                child: Center(
                  child: Text(
                      'Value X = ' + Get.find<TapController>().x.toString(),
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blueAccent,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.increaseY();
              },
              child: Container(
                width: double.maxFinite,
                height: 100,
                margin: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    'Increase Y',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<TapController>().AdditionXandY();
              },
              child: Container(
                width: double.maxFinite,
                height: 100,
                margin: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    'Total X+Y',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.find<ListController>().setValues(Get.find<TapController>().z);
              },
              child: Container(
                width: double.maxFinite,
                height: 100,
                margin: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    'Save Total',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
