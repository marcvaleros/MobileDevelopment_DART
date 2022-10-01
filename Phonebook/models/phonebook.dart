import 'contacts.dart';
import 'dart:io';

class Phonebook {
  List<Contact> _pbook = [
    Contact("Marc", "Valeros", "09993865418", "Lapu-lapu City"),
    Contact("Hannah", "Labana", "09993865452", "Cebu City"),
    Contact("Erik", "Celdran", "09993865318", "Cebu City"),
    Contact("Wayne", "Dayata", "09993866518", "Cebu City"),
    Contact("Jomar", "Leano", "09995876518", "Toledo City")
  ];

  add_new() {
    var fname, lname, phoneNumber, address;

    print("\nINPUT CONTACT DETAILS\n");
    print("Enter Firstname:");
    fname = stdin.readLineSync();

    print("Enter Lastname:");
    lname = stdin.readLineSync();

    print("Enter Phone Number:");
    phoneNumber = stdin.readLineSync();

    print("Enter Address:");
    address = stdin.readLineSync();

    var con = new Contact(fname, lname, phoneNumber, address);
    this._pbook.add(con);
  }

  delete(String number) {
    this._pbook.removeWhere((con) => con.phoneNumber == number);
  }

  Contact? findContact(String number) {
    
    Contact? result =
        _pbook.firstWhere((element) => element.phoneNumber == number);
    return result;
  }

  searchByNumber(String number) {
    Contact? contact = findContact(number);

    if (contact == null) {
      print("Record Not Found\n");
    } else {
      print("Fullname: ${contact.fname} ${contact.lname}");
      print("Phone Number: ${contact.phoneNumber}");
      print("Address: ${contact.address}");
    }
  }

  displayContacts() {
    for (var con in _pbook) {
      print("======================================");
      print("Fullname: ${con.fname} ${con.lname}");
      print("Phone Number: ${con.phoneNumber}");
      print("Address: ${con.address}");
    }
  }
}
