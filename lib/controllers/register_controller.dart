import 'package:consultant_page/const.dart';
import 'package:consultant_page/models/consultant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final fullName = TextEditingController();
  final bigImageUrl = TextEditingController(
      text:
          "https://i.picsum.photos/id/10/1920/1920.jpg?hmac=lalf_8VPuxgc7vTTtCpqdyml8ro9eC2A4Hj3zQJWI60");
  final profilePicUrl = TextEditingController(
      text:
          "https://i.picsum.photos/id/10/1920/1920.jpg?hmac=lalf_8VPuxgc7vTTtCpqdyml8ro9eC2A4Hj3zQJWI60");
  final dateTime = DateTime.now().obs;
  final date = TextEditingController();
  final durationTxt = TextEditingController();
  final consultants = <Consultant>[].obs;

  final duration = Duration.zero.obs;

  createConsultant() {
    Const.consultants.add(
      Consultant(
        id: Const.consultants.length,
        fullname: fullName.text,
        profileImage: profilePicUrl.text,
        bgImage: bigImageUrl.text,
        date: dateTime.value,
        duration: duration.value,
        votes: 2,
      ),
    );
  }

  void saveConsultant() {
    createConsultant();
    Get.back();
  }

  @override
  void onClose() {
    fullName.dispose();
    bigImageUrl.dispose();
    profilePicUrl.dispose();
    date.dispose();
    durationTxt.dispose();
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
