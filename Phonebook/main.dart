//phonebook program OOP using Dart
import 'models/phonebook.dart';

void main() {
  //initialize phonebook and populate with contacts
  var phonebook = new Phonebook();

  // prints all the contacts in the phonebook
  print("\nDISPLAY ALL CONTACTS\n");
  phonebook.displayContacts();

  // get data from the user input and add to list
  phonebook.add_new();

  // display data along with the newly inputted data
  print("\nAFTER ADDING NEW CONTACT\n");
  phonebook.displayContacts();

  //delete a contact from the list
  phonebook.delete("09993865418");
  print("\nAFTER DELETION\n");
  phonebook.displayContacts();

  //look for a specific contact using the number
  phonebook.searchByNumber("09993866518");
}
