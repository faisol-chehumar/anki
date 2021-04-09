import 'package:anki/models/deck.dart';
import 'package:anki/repository/interface/deck_repository_interface.dart';
import 'package:anki/services/local_storage/i_local_storage_service.dart';

class DeckRepository implements IDeckRepository {
  final LocalStorageService _localStorage;

  DeckRepository(this._localStorage) : LocalStorage;

  @override
  Future<List<Deck>> getAllDecks() async {
    var decks = <Deck>[];
    return decks;
  }

  @override
  Future<Deck> getDeckById(String id) async {
    Deck deck = Deck(id: '1', title: 'title');
    return deck;
  }

  @override
  Future<Deck> createDeck(String id, String title) async {
    Deck deck = Deck(id: 'id', title: 'title');
    return deck;
  }
}
