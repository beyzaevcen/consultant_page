import 'package:consultant_page/models/consultant.dart';
import 'package:get/get.dart';

class Const {
  static final consultants = <Consultant>[
    Consultant(
        id: 0,
        fullname: "Beyza Evcen",
        profileImage:
            "https://images.unsplash.com/photo-1585936529565-1871537209e3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
        bgImage:
            "https://images.unsplash.com/photo-1589656966895-2f33e7653819?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
        date: DateTime.now(),
        duration: const Duration(minutes: 45),
        votes: 2.3),
    Consultant(
        id: 1,
        fullname: "Ezel Karadirek",
        profileImage:
            "https://images.unsplash.com/photo-1552728089-57bdde30beb3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjF8fGFuaW1hbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
        bgImage:
            "https://images.unsplash.com/photo-1537151608828-ea2b11777ee8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=694&q=80",
        date: DateTime.now().add(const Duration(days: -10)),
        duration: const Duration(minutes: 70),
        votes: 5),
    Consultant(
        id: 2,
        fullname: "Zehra Öztürk",
        profileImage:
            "https://images.unsplash.com/photo-1570481662006-a3a1374699e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
        bgImage:
            "https://images.unsplash.com/photo-1534198562810-5cdfce0ed4ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80",
        date: DateTime.now(),
        duration: const Duration(minutes: 60),
        votes: 4)
  ].obs;
}
