// Q1
class Counter {
  static int totalCount = 0;

  Counter() {
    totalCount++;
  }
}

// Q2
class Constants {
  static final double PI = 3.14159;
  static final int MAX_USERS = 500;
}

// Q3
class Logger {
  static void log(String message) {
    print(message);
  }
}

// Q4
class Config {
  static String appName = "MyApp";
  static String version = "1.0";

  static void printAppInfo() {
    print("$appName - $version");
  }
}

// Q5
class Shape {
  String name;
  String color;

  Shape(this.name, this.color);

  void printInfo() {
    print("$name - $color");
  }

  double getArea() => 0;
}

// Q6
class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height, String name, String color)
    : super(name, color);

  @override
  double getArea() => width * height;
}

// Q7
class Circle extends Shape {
  double radius;

  Circle(this.radius) : super("Circle", "Red");

  @override
  double getArea() => 3.14 * radius * radius;
}

// Q8
class ElectronicDevice {
  String brand;

  ElectronicDevice(this.brand);

  void powerOn() {
    print("Device powering on");
  }
}

// Q9
class MobileDevice extends ElectronicDevice {
  int batteryLife;

  MobileDevice(String brand, this.batteryLife) : super(brand);
}

class Smartphone extends MobileDevice {
  Smartphone(String brand, int batteryLife) : super(brand, batteryLife);

  void installApp(String app) {
    print("Installing $app");
  }

  @override
  void powerOn() {
    super.powerOn();
    print("Phone is starting up");
  }
}

// Q10
class Engine {
  String type;
  int power;

  Engine(this.type, this.power);

  void start() {
    print("Engine starting...");
  }
}

// Q11
class Car {
  String brand;
  String model;
  final Engine engine;

  Car(this.brand, this.model, this.engine);

  void turnKey() {
    engine.start();
  }
}

// Q12
class Address {
  String street;
  String city;

  Address(this.street, this.city);
}

class Company {
  String name;
  int foundedYear;
  Address mailingAddress;

  Company(this.name, this.foundedYear, this.mailingAddress);
}

// Q13
class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

// Q14
class ShoppingCart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  void removeProduct(String productName) {
    products.removeWhere((p) => p.name == productName);
  }

  double getTotalCost() {
    double total = 0;
    for (var p in products) {
      total += p.price;
    }
    return total;
  }

  int getItemCount() => products.length;
}

// Q15
class Printer {
  void printDocument(String doc) {
    print("Printing document");
  }
}

// Q16
class LaserPrinter extends Printer {
  @override
  void printDocument(String doc) {
    print("Laser printer: printing $doc at 100 pages/min");
  }
}

class InkjetPrinter extends Printer {
  @override
  void printDocument(String doc) {
    print("Inkjet printer: printing $doc at 20 pages/min");
  }
}

// Q17
List<Printer> createPrinters() {
  return [LaserPrinter(), InkjetPrinter()];
}

// Q18
class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  double calculateBonus() => 0;
}

class Developer extends Employee {
  Developer(String name, double salary) : super(name, salary);

  @override
  double calculateBonus() => salary * 0.15;
}

class Salesperson extends Employee {
  Salesperson(String name, double salary) : super(name, salary);

  @override
  double calculateBonus() => salary * 0.20;
}

// Q19
List<Employee> createEmployees() {
  return [Developer("Ali", 10000), Salesperson("Sara", 10000)];
}

// Q20
abstract class Worker {
  void work();
}

// Q21
abstract class WorkerWithBreak {
  void work();

  void takeBreak() {
    print("Worker taking 15 minutes break");
  }
}

class Engineer extends WorkerWithBreak {
  @override
  void work() {
    print("Engineer is working");
  }
}

// Q22
class Designer extends WorkerWithBreak {
  @override
  void work() {
    print("Designer is working");
  }
}

// Q23
abstract class Flyable {
  void takeOff();
  void land();
}

class Plane implements Flyable {
  @override
  void takeOff() {
    print("Plane taking off");
  }

  @override
  void land() {
    print("Plane landing");
  }
}

// Q24
abstract class Swimmable {
  void dive();
  void surface();
}

class AmphibiousVehicle implements Flyable, Swimmable {
  @override
  void takeOff() => print("Vehicle taking off");

  @override
  void land() => print("Vehicle landing");

  @override
  void dive() => print("Vehicle diving");

  @override
  void surface() => print("Vehicle surfacing");
}

// Q25
abstract class Printable {
  void printReport();
}

class ReportGenerator implements Printable {
  @override
  void printReport() {
    print("Printing report...");
  }
}

// MAIN
void main() {
  Counter();
  Counter();
  Counter();
  print(Counter.totalCount);

  print(Constants.PI);
  print(Constants.MAX_USERS);

  Logger.log("Hello Logger");
  Config.printAppInfo();

  for (var p in createPrinters()) {
    p.printDocument("Report");
  }

  for (var e in createEmployees()) {
    print(e.calculateBonus());
  }

  Engineer eng = Engineer();
  Designer des = Designer();

  eng.work();
  eng.takeBreak();
  des.work();
  des.takeBreak();
}
