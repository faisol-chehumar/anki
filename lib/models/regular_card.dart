import 'package:flutter/material.dart';

class RegularCard {
  String id;
  String question;
  String answer;

  RegularCard(
      {@required this.id, @required this.question, @required this.answer});

  RegularCard.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    answer = json['answer'];
  }
}
