import 'package:flutter/material.dart';
import 'package:anki/models/regular_card.dart';

class Deck {
  String id;
  String title;
  List<RegularCard> cards;

  Deck({
    @required this.id,
    @required this.title,
    this.cards = const <RegularCard>[],
  });

  Deck.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    cards = json['cards'];
  }
}
