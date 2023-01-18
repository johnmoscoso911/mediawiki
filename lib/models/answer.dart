import 'package:uuid/uuid.dart';

class Answer {
  late String id;
  final String text;
  final bool isCorrect;

  Answer(this.text, this.isCorrect) {
    id = const Uuid().v4();
  }

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ? true : other is Answer && other.id == id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => text;
}
