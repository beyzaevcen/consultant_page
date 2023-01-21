import 'package:consultant_page/utils/theme.dart';
import 'package:consultant_page/widgets/custom_ink_well.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertModalActionsButtons extends StatelessWidget {
  const AlertModalActionsButtons({
    Key? key,
    this.textOkey = "yes",
    this.textCancel = "noo",
    this.onPressedOkey,
    required this.onPressedCancel,
    this.color = CColors.mainColor,
    this.cancelColor,
  }) : super(key: key);
  final String textOkey;
  final String textCancel;
  final Function()? onPressedOkey;
  final Function() onPressedCancel;
  final Color color;
  final Color? cancelColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: CustomInkWell(
            onTap: onPressedCancel,
            child: Container(
              alignment: Alignment.center,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: cancelColor ?? CColors.foregroundBlack,
                border: Border.all(width: 1, color: cancelColor ?? CColors.subtitleColor),
              ),
              child: Text(
                textCancel.tr,
                style: const TextStyle(fontSize: 16, color: CColors.white),
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          child: CustomInkWell(
            onTap: onPressedOkey,
            child: Container(
              alignment: Alignment.center,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: onPressedOkey == null ? CColors.iconColor : color,
              ),
              child: Text(
                textOkey.tr,
                style: const TextStyle(fontSize: 16, color: CColors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
