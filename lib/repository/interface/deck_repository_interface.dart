import 'package:anki/models/deck.dart';

abstract class IDeckRepository {
  Future<List<Deck>> getAllDecks();
  Future<Deck> getDeckById(String id);
  Future<Deck> createDeck(String id, String title);
}
