import 'package:flutter/material.dart';
import 'package:flutter_course/HomePage.dart';
import 'package:flutter_course/controllers/tap_controller.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: (Get.back),
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
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
                controller.decreaseX();
              },
              child: Container(
                width: double.maxFinite,
                margin: const EdgeInsets.all(20),
                height: 100,
                child: Center(
                  child: Text('Decrease',
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
          ],
        ),
      ),
    );
  }
}
