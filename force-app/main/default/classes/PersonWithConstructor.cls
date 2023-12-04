public with sharing class PersonWithConstructor {
  public String name;
  public Integer age;

  public PersonWithConstructor() {
    System.debug('The constructor is called!');
  }

  public PersonWithConstructor(Integer userAge) {
    age = userAge;
  }

  public PersonWithConstructor(String userName) {
    name = userName;
  }

  public PersonWithConstructor(String userName, Integer userAge) {
    name = userName;
    age = userAge;
  }

  public void printPerson() {
    System.debug('My name: ' + name + ', my age: ' + age);
  }

  //Call in Anonymous window
  //Person person1 = new Person(); // 'The constructor is called!'
  //Person person2 = new Person(32);
  //person2.printPerson(); // My name: null, my age: 32
  //Person person3 = new Person('Alex');
  //person3.printPerson(); // My name: Alex, my age: null
  //Person person4 = new Person('Alex', 32);
  //person4.printPerson(); // My name: Alex, my age: 32
}