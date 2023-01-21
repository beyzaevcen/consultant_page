import 'package:consultant_page/utils/theme.dart';
import 'package:consultant_page/widgets/dialog_actions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddConsultantModal extends StatelessWidget {
  const AddConsultantModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: CColors.foregroundBlack,
      elevation: 10,
      title: Text('Add Consultant'.tr),
      content: Column(
        children: const [],
      ),
      actions: [
        AlertModalActionsButtons(
          textCancel: "yes",
          textOkey: "noo",
          onPressedOkey: Get.back,
          onPressedCancel: () => Get.back(result: true),
        ),
      ],
    );
  }
}
