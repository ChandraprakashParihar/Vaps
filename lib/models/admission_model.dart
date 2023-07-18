// ignore_for_file: public_member_api_docs, sort_constructors_first
class Admission {
  final String batch;
  final String registered;
  final String confirmed;
  final String paid;
  Admission({
    required this.batch,
    required this.registered,
    required this.confirmed,
    required this.paid,
  });

  Admission copyWith({
    String? batch,
    String? registered,
    String? confirmed,
    String? paid,
  }) {
    return Admission(
      batch: batch ?? this.batch,
      registered: registered ?? this.registered,
      confirmed: confirmed ?? this.confirmed,
      paid: paid ?? this.paid,
    );
  }
}
