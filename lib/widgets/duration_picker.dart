import 'package:consultant_page/controllers/duration_picker_controller.dart';
import 'package:consultant_page/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get.dart';

class DurationPicker extends StatelessWidget {
  const DurationPicker({super.key});

  final time = const TimeOfDay(hour: 10, minute: 60);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DurationPickerController());
    return AlertDialog(
      backgroundColor: Colors.black,
      title: Text('${time.hour}:${time.minute}'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            readOnly: true,
            onTap: () async {
              DatePicker.showTimePicker(
                context,
                showSecondsColumn: false,
                onConfirm: (time) {
                  controller.startTime.value = time;
                  controller.start.text = '${time.hour}:${time.minute}';
                },
              );
            },
            controller: controller.start,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: Colors.white, width: 2)),
              hintText: "Choose a start time",
              hintStyle: const TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextField(
            readOnly: true,
            onTap: () async {
              DatePicker.showTimePicker(
                context,
                showSecondsColumn: false,
                onConfirm: (time) {
                  controller.endTime.value = time;
                  controller.end.text = '${time.hour}:${time.minute}';
                },
                currentTime: DateTime.now(),
              );
            },
            controller: controller.end,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: Colors.white, width: 2)),
              hintText: "Choose a end time",
              hintStyle: const TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: Colors.white),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {
              final Duration duration =
                  controller.endTime.value.difference(controller.startTime.value);

              Get.back(result: duration);
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
                  "Calculate Duration",
                  style: TextStyle(color: CColors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
