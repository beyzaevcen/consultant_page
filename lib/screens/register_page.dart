import 'package:consultant_page/controllers/register_controller.dart';
import 'package:consultant_page/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';

import '../utils/theme.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());

    return Scaffold(
      backgroundColor: CColors.black.withOpacity(0.9),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              style: const TextStyle(color: CColors.white),
              controller: controller.fullName,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: CColors.mainColor, width: 2),
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: "Enter a full name",
                hintStyle: const TextStyle(color: CColors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: CColors.white),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: controller.bigImageUrl,
              style: const TextStyle(color: CColors.white),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: CColors.mainColor, width: 2),
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: "Enter a big image URL",
                hintStyle: const TextStyle(color: CColors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: CColors.white),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: controller.profilePicUrl,
              style: const TextStyle(color: CColors.white),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: CColors.mainColor, width: 2)),
                hintText: "Enter a profil image URL",
                hintStyle: const TextStyle(color: CColors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: CColors.white),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: controller.duration,
              style: const TextStyle(color: CColors.white),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: CColors.mainColor, width: 2)),
                hintText: "Enter a duration",
                hintStyle: const TextStyle(color: CColors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: CColors.white),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              controller: controller.date,
              style: const TextStyle(color: CColors.white),
              readOnly: true,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: CColors.mainColor, width: 2)),
                hintText: "Coose a Date",
                hintStyle: const TextStyle(color: CColors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: CColors.white),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              onTap: () async {
                DatePicker.showDateTimePicker(
                  context,
                  showTitleActions: true,
                  maxTime: DateTime.now(),
                  onConfirm: (date) {
                    controller.dateTime.value = date;
                    controller.date.text = date.format;
                  },
                  currentTime: DateTime.now(),
                  theme: const DatePickerTheme(
                    backgroundColor: CColors.foregroundBlack,
                    headerColor: CColors.backgroundcolor,
                    itemStyle: TextStyle(color: CColors.white, fontSize: 18),
                    doneStyle: TextStyle(color: Colors.blue, fontSize: 16),
                    cancelStyle: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              onTap: () {
                controller.createConsultant();
              },
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: CColors.mainColor,
                ),
                width: double.infinity,
                height: 50,
                child: const Center(
                  child: Text(
                    "Make an Appointment",
                    style: TextStyle(color: CColors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
