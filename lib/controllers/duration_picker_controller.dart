import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DurationPickerController extends GetxController {
  final start = TextEditingController();
  final startTime = DateTime.now().obs;
  final end = TextEditingController();
  final endTime = DateTime.now().obs;

  @override
  void onInit() {
    print("PUT");
    super.onInit();
  }

  @override
  void onClose() {
    start.dispose();
    end.dispose();
    super.onClose();
  }

  Future<int> toplam(int x, int y) async {
    return x + y;
  }
}
