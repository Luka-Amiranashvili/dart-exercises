void main() {
  var rect = Rectangle(5, 2);
  print("This is $rect");
  var student = Student("luka", 24, [85, 90, 60, 60]);
  print(student);
  var car = Car("BWM", "X5", 1990);
  print("Info: $car");
  print("Is it classic? ${car.isClassic()}");
  var carInfo = CarInfo("Mercedes", "s-class", 2017, 9.600);
  print(carInfo.getInfo());
  var book = Book("something", "some", 150, 5.50);
  print(book.getDiscount());
}

// 1. Copy Person and Emploee classes in a separate file and write toString methods for them.
class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  @override
  String toString() {
    return "Person(name: $name, age: $age, address: $address)";
  }
}

class Employee {
  String name;
  int age;
  String address;
  int? salary;
  Employee(this.name, this.age, this.address, this.salary);

  @override
  String toString() {
    return ("Employee(name: $name, age: $age, address: $address, salary: $salary)");
  }
}

// 2. Create a class named "Rectangle" with attributes for width and height. Create methods for calculating the perimeter and area of a rectangle.

class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double perimeter() {
    return 2 * (width + height);
  }

  @override
  String toString() {
    return "Rectangle(width: $width, height: $height)";
  }
}

// 3. Create a class named "Student" with attributes for name, age, and grades. Create methods for calculating the average grade of a student and for displaying the student's information.

class Student {
  String name;
  int age;
  List<double> grades;

  Student(this.name, this.age, this.grades);

  double averageGrade() {
    if (grades.isEmpty) return 0;
    double sum = grades.reduce((a, b) => a + b);
    return sum / grades.length;
  }

  @override
  String toString() {
    return "Student(name: $name, age: $age, grades: $grades, average: ${averageGrade()})";
  }
}

// 4. Create a class named "Car" with attributes for make, model, and year. Create methods for displaying the car's information and for determining if the car is a classic.

class Car {
  String make;
  String model;
  int year;

  Car(this.make, this.model, this.year);

  @override
  String toString() {
    return "Car(make: $make, model: $model, year: $year)";
  }

  bool isClassic() {
    int currentYear = DateTime.now().year;
    return currentYear - year >= 20;
  }
}

// 5. Create a class called Car with properties such as brand, model, year and price. Add a method called getInfo that returns the information about the car.

class CarInfo {
  String brand;
  String model;
  int year;
  double price;

  CarInfo(this.brand, this.model, this.year, this.price);

  String getInfo() {
    return "Brand: $brand, Model: $model, Year: $year, Price: $price";
  }
}

// 6. Create a class called Student with properties such as name, age, grades, and studentID. Add a method called getAverage that calculates and returns the average of all the grades.

class StudentInfo {
  String name;
  int age;
  double grades;
  int studentId;

  StudentInfo(this.name, this.age, this.grades, this.studentId);
}

// 7. Create a class called Book with properties such as title, author, pages, and price. Add a method called getDiscount that calculates and returns the discount based on the number of pages.

class Book {
  String title;
  String author;
  int pages;
  double price;

  Book(this.title, this.author, this.pages, this.price);

  getDiscount() {
    double discount = (pages / 100) * 5;
    if (discount > 30) discount = 30;
    return discount;
  }

  double getPriceAfterdiscount() {
    return price * (1 - getDiscount() / 100);
  }
}

// 8. Create a class called BankAccount with properties such as accountNumber, balance, and owner. Add methods called deposit and withdraw that allow the user to deposit or withdraw money from the account.

// 9. Create a class called Person with properties such as name, age, and address. Add a method called greet that returns a personalized greeting to the person.
