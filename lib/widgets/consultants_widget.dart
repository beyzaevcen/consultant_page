import 'package:consultant_page/controllers/home_controller.dart';
import 'package:consultant_page/models/consultant.dart';
import 'package:consultant_page/utils/extensions.dart';
import 'package:consultant_page/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConsultantWidget extends GetView<HomeController> {
  const ConsultantWidget({
    Key? key,
    required this.consultant,
  }) : super(key: key);
  final Consultant consultant;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          border: Border.all(color: CColors.subtitleColor, width: 1),
          borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        onTap: () => controller.selectedID.value = consultant.id,
        leading: Padding(
          padding: const EdgeInsets.only(top: 2, bottom: 2),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(consultant.profileImage),
          ),
        ),
        title: Text(
          consultant.fullname,
          style: const TextStyle(color: CColors.white),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              consultant.date.format,
              style: const TextStyle(color: CColors.subtitleColor),
            ),
            Text(
              consultant.duration.format,
              style: const TextStyle(color: CColors.subtitleColor),
            ),
          ],
        ),
      ),
    );
  }
}
