import 'models/deck.dart';

void main() {
  //Deck Program
  //Create a new deck of playing cards
  var deck = new Deck();

  //print all cards in this deck
  deck.printCards();

  //shuffle the cards in this deck
  deck.shuffle();
  deck.printCards();

  //Find all cards wiht a given suit and print them
  deck.cardsWithSuit("Diamonds");
  // deck.cardsWithSuit("Hearts");
  // deck.cardsWithSuit("Clubs");
  // deck.cardsWithSuit("Spades");
}
