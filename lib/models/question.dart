import 'package:uuid/uuid.dart';

import './answer.dart';

class Question {
  late String id;
  final String text;
  final List<Answer> answers;

  Question(this.text, this.answers) {
    id = const Uuid().v4();
  }

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ? true : other is Question && other.id == id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => text;
}
