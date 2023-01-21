import 'package:consultant_page/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class BtSheet extends StatelessWidget {
  const BtSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CColors.white.withOpacity(0.9),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: CColors.mainColor, width: 2),
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: "Enter a full name",
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: CColors.backgroundcolor),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: CColors.mainColor, width: 2),
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: "Enter a big image URL",
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: CColors.backgroundcolor),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: CColors.mainColor, width: 2)),
                hintText: "Enter a profil image URL",
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 3, color: CColors.backgroundcolor),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(color: CColors.mainColor, width: 2)),
              hintText: "Birthday",
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 3, color: CColors.backgroundcolor),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            onTap: () async {
              DatePicker.showDateTimePicker(
                context,
                showTitleActions: true,
                maxTime: DateTime.now(),
                onConfirm: (date) {},
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
        ],
      ),
    );
  }
}
