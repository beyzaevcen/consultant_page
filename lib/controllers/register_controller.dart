import 'package:consultant_page/const.dart';
import 'package:consultant_page/models/consultant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final fullName = TextEditingController();
  final bigImageUrl = TextEditingController();
  final profilePicUrl = TextEditingController();
  final dateTime = DateTime.now().obs;
  final duration = TextEditingController();
  final date = TextEditingController();
  final consultants = <Consultant>[].obs;

  createConsultant() {
    Const.consultants.add(Consultant(
        id: Const.consultants.length - 1,
        fullname: fullName.text,
        profileImage: profilePicUrl.text,
        bgImage: bigImageUrl.text,
        date: dateTime.value,
        duration: Duration(minutes: int.parse(duration.text)),
        votes: 0));
    print(Const.consultants.last.duration);
  }

  @override
  void onClose() {
    fullName.dispose();
    bigImageUrl.dispose();
    profilePicUrl.dispose();
    date.dispose();
    duration.dispose();
    super.onClose();
  }

  @override
  void onInit() {
    for (var element in Const.consultants) {
      consultants.add(element);
    }
    super.onInit();
  }
}
