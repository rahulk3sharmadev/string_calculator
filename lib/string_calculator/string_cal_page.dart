import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:string_calculator/String_calculator/string_cal_controller.dart';

class StringCalculatorScreen extends StatelessWidget {
  //// do not check this code as this was previously i used for other UI calculator for interview
  final StringController controller = Get.put(StringController());
  final TextEditingController textController = TextEditingController();

  StringCalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("String Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(
                labelText: "Enter string",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                controller.calculate(value);
              },
            ),
            const SizedBox(height: 20),
            Obx(() => Text(
              "Result: ${controller.result.value}",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            )),
          ],
        ),
      ),
    );
  }
}