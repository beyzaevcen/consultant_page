class Consultant {
  final int id;
  final String fullname;
  final String profileImage;
  final String bgImage;
  final DateTime date;
  final Duration duration;
  final double votes;

  Consultant(
      {required this.id,
      required this.fullname,
      required this.profileImage,
      required this.bgImage,
      required this.date,
      required this.duration,
      required this.votes});
}
