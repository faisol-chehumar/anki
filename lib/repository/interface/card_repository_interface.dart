import 'package:anki/models/regular_card.dart';

abstract class ICardRepository {
  Future<List<RegularCard>> getAllCards();
  Future<RegularCard> getCardById(String id);
  Future<RegularCard> createCard(String question, String answer);
  Future<RegularCard> updateCard(String id, String question, String answer);
  Future<void> removeCard(String id);
}
