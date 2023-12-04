public with sharing class Person {
  public String name;
  public Integer age;

  public void sayName() {
    System.debug('My name is ' + name);
  }

  public void sayAge() {
    System.debug('I am ' + age);
  }

  //Call the sayName and sayAge methods using sayNameAndAge method.
  public void sayNameAndAge() {
    sayName();
    sayAge();
  }

  //Methods with return values
  public Integer giveBackFive() {
    return 5;
  }

  public String returnAlex() {
    String igorName = 'Alex';
    return igorName;
  }

  public Person someMethodName() {
    Person p1 = new Person();

    p1.name = 'Alex';
    p1.age = 36;

    return p1;
  }

  //Method to calculate the number of years this person must work until retirement.
  public void calculateYears1() {
    Integer years = 65 - age;
    System.debug('Years until retirement: ' + years);
  }

  public Integer calculateYears2() {
    Integer years = 65 - age;
    return years;
  }

  public Integer calculateYears3() {
    return 65 - age;
  }

  //Method with argument/parameters
  public void setNameAndAge(String userName, Integer userAge) {
    name = userName;
    age = userAge;
  }

  //Method with "this" keyword in the parameter
  //In this case, when we assign the value to the name variable (name = userName),
  //it’s clear that name is the class variable and userName is a parameter.
  //What if we change our parameter’s name?
  public void setName(String name) {
    this.name = name;
  }

  //Contratuctor
  public Person() {
    System.debug('The constructor is called!');
  }
}