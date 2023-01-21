import 'package:consultant_page/const.dart';
import 'package:consultant_page/controllers/home_controller.dart';
import 'package:consultant_page/screens/register_page.dart';
import 'package:consultant_page/utils/extensions.dart';
import 'package:consultant_page/utils/theme.dart';
import 'package:consultant_page/widgets/consultants_widget.dart';
import 'package:consultant_page/widgets/rating_star_maker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: CColors.black,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.chevronLeft,
            color: CColors.subtitleColor,
          ),
        ),
        title: const Text(
          "Detail",
          style: TextStyle(color: CColors.subtitleColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.arrowUpFromBracket,
              color: CColors.subtitleColor,
            ),
          ),
        ],
      ),
      backgroundColor: CColors.black,
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32),
        child: ListView(
          children: [
            Obx(() => ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    Const.consultants
                        .elementAt(Const.consultants
                            .indexWhere((e) => controller.selectedID.value == e.id))
                        .bgImage,
                    height: 206,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                )),
            const SizedBox(
              height: 24,
            ),
            Container(
              alignment: Alignment.centerLeft,
              height: 86,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: CColors.white,
              ),
              child: Obx(() => ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 2, bottom: 2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                            Const.consultants.elementAt(controller.selectedID.value).profileImage),
                      ),
                    ),
                    title: Text(Const.consultants
                        .elementAt(Const.consultants
                            .indexWhere((e) => controller.selectedID.value == e.id))
                        .fullname),
                    subtitle: const Text("64 positive feedbacks"),
                    trailing: RatingStarMaker(
                      rate: Const.consultants
                          .elementAt(Const.consultants
                              .indexWhere((e) => controller.selectedID.value == e.id))
                          .votes,
                    ),
                  )),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Consultant Headline",
                style: TextStyle(color: CColors.white, fontSize: 21),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const Text(
              "Lorem ipsum dolar sit amet,consectetur adipiscing elit.Lorem ipsum dolar sit amet,consectetur adipiscing elit. ",
              style: TextStyle(color: CColors.subtitleColor, fontSize: 17),
            ),
            const SizedBox(
              height: 12,
            ),
            Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Chip(
                        backgroundColor: CColors.white,
                        label: Text(
                          "🗓️${Const.consultants.elementAt(Const.consultants.indexWhere((e) => controller.selectedID.value == e.id)).date.onlyDate}",
                        )),
                    Chip(
                        backgroundColor: CColors.white,
                        label: Text(
                          "🕝${Const.consultants.elementAt(Const.consultants.indexWhere((e) => controller.selectedID.value == e.id)).date.onlyTime}",
                          style: const TextStyle(color: CColors.black),
                        )),
                    Chip(
                        backgroundColor: CColors.white,
                        label: Text(
                          " ⏱️${Const.consultants.elementAt(Const.consultants.indexWhere((e) => controller.selectedID.value == e.id)).duration.format}",
                        )),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Similar Consultants",
                style: TextStyle(color: CColors.white, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ...Const.consultants.map((e) => ConsultantWidget(
                  consultant: e,
                )),
            InkWell(
              onTap: () => Get.to(const RegisterPage()),
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
            )
          ],
        ),
      ),
    );
  }
}
