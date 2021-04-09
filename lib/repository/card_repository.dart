import 'package:anki/models/regular_card.dart';
import 'package:anki/repository/interface/card_repository_interface.dart';

class CardRepository implements ICardRepository {
  @override
  Future<List<RegularCard>> getAllCards() async {
    var cards = <RegularCard>[];
    return cards;
  }

  @override
  Future<RegularCard> getCardById(String id) async {
    RegularCard card;
    return card;
  }

  @override
  Future<RegularCard> createCard(
    String question,
    String answer,
  ) async {
    RegularCard card = RegularCard(id: '11', question: 'xxx', answer: 'ssss');
    return card;
  }

  @override
  Future<RegularCard> updateCard(
    String id,
    String question,
    String answer,
  ) async {
    RegularCard card = RegularCard(id: '11', question: 'aaa', answer: 'bbb');
    return card;
  }

  @override
  Future<void> removeCard(String id) async {
    return;
  }
}
