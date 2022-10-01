import 'card.dart';

class Deck {
  List<Card> deckOfcards = [];

  Deck() {
    var rankList = [
      'Ace',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      'Jack',
      'Queen',
      'King'
    ];
    var suitList = {'Diamonds', 'Hearts', 'Clubs', 'Spades'};

    for (var suit in suitList) {
      for (var rank in rankList) {
        var card = new Card(suit, rank);
        deckOfcards.add(card);
      }
    }
  }

  shuffle() {
    deckOfcards.shuffle();
  }

  printCards() {
    print("[");
    for (var card in deckOfcards) {
      print("$card,");
    }
    print("]");
  }

  cardsWithSuit(String suit) {
    var findSuit = deckOfcards.where((card) => card.suit == suit);

    print("All Cards with $suit:");
    for (var x in findSuit) {
      print(x);
    }

    return findSuit;
  }

  toString() {
    return deckOfcards.toString();
  }
}
