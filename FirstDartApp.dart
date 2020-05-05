class Person{
  
  String name;
  int yearOfBirth;
  
  //For making the variables optional, put them in {}
  /*
  Person({String name,  int yearOfBirth}){
    this.name = name;
    this.yearOfBirth = yearOfBirth;
    
  }
  */
  
    //For making the variables optional, put them in {}
  Person({this.name, this.yearOfBirth});
  
  int getAgeIn(int year){
    return year - yearOfBirth;
  }
}

double addNumbers(double num1, double num2){
  return num1 + num2;
}

void main() {
  
  var person = Person(name: 'Max', yearOfBirth: 1989);
  
  //person.name = 'Max';
  //person.yearOfBirth = 1989;
  
  var sum = addNumbers(1,2.6);
  
  print('The sum is '  + sum.toString());
  print('Your person is ready!');
  print('Name: ' + person.name);
  print('Age: ' + person.getAgeIn(2020).toString());
}

