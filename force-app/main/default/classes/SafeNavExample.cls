public with sharing class SafeNavExample {
  public static void safeNav() {
    String accName = [SELECT Id, Name FROM Account WHERE Name = 'Kevin' LIMIT 1]
    ?.Name;
    System.debug('This is the account name ' + accName);
  }
}