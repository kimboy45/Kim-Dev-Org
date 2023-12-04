public with sharing class CollectionInterationExample {
  public static void updateContactsLastNameEnhanced(List<Contact> conts) {
    System.debug('This is the contact list before interation ' + conts);
    for (Contact cont : conts) {
      System.debug('This is the current ' + cont);
      cont.LastName = 'Mikoy';
    }
    System.debug('This is the contact list ' + conts);
  }
}