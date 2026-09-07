abstract class Vehicle {
  String _brand;
  int _speed;
  double _fuelCapacity;
  String _color;
  bool _isEngineOn;

  Vehicle(this._brand, this._speed, this._fuelCapacity, this._color, [this._isEngineOn = false]);

  // Getters
  String get brand => _brand;
  int get speed => _speed;
  double get fuelCapacity => _fuelCapacity;
  String get color => _color;
  bool get isEngineOn => _isEngineOn;

  // Setters
  set brand(String brand) => _brand = brand;
  set speed(int speed) => _speed = speed;
  set fuelCapacity(double fuelCapacity) => _fuelCapacity = fuelCapacity;
  set color(String color) => _color = color;
  set isEngineOn(bool isEngineOn) => _isEngineOn = isEngineOn;

  void toggleEngine() {
    _isEngineOn = !_isEngineOn;
    print('$brand engine has been turned ${_isEngineOn ? "ON" : "OFF"}');
  }

  void displayDetails();
}

class Car extends Vehicle {
  int numberOfDoors;
  String transmission; 
  bool isElectric;     

  Car(
    String brand,
    int speed,
    double fuelCapacity,
    String color,
    this.numberOfDoors,
    this.transmission,
    this.isElectric,
  ) : super(brand, speed, fuelCapacity, color);

  @override
  void displayDetails() {
    print('Car: $brand ($color)');
    print('Max Speed: $speed km/h | Fuel Capacity: $fuelCapacity L');
    print('Doors: $numberOfDoors | Transmission: $transmission | Electric: ${isElectric ? "Yes" : "No"}');
    print('Engine status: ${isEngineOn ? "ON" : "OFF"}');
  }
}

class Motorcycle extends Vehicle {
  String handlebarType;
  int engineCapacityCc; 
  bool hasSidecar;      

  Motorcycle(
    String brand,
    int speed,
    double fuelCapacity,
    String color,
    this.handlebarType,
    this.engineCapacityCc,
    this.hasSidecar,
  ) : super(brand, speed, fuelCapacity, color);

  @override
  void displayDetails() {
    print('Motorcycle: $brand ($color)');
    print('Max Speed: $speed km/h | Fuel Capacity: $fuelCapacity L');
    print('Handlebar Type: $handlebarType | Engine Capacity: $engineCapacityCc CC | Sidecar: ${hasSidecar ? "Yes" : "No"}');
    print('Engine status: ${isEngineOn ? "ON" : "OFF"}');
  }
}

class Truck extends Vehicle {
  double cargoCapacityTons;
  int numberOfAxles;  
  String trailerType;  

  Truck(
    String brand,
    int speed,
    double fuelCapacity,
    String color,
    this.cargoCapacityTons,
    this.numberOfAxles,
    this.trailerType,
  ) : super(brand, speed, fuelCapacity, color);

  @override
  void displayDetails() {
    print('Truck: $brand ($color)');
    print('Max Speed: $speed km/h | Fuel Capacity: $fuelCapacity L');
    print('Cargo Capacity: $cargoCapacityTons Tons | Number of Axles: $numberOfAxles | Trailer Type: $trailerType');
    print('Engine status: ${isEngineOn ? "ON" : "OFF"}');
  }
}

void main() {
  Car myCar = Car('Tesla', 250, 0.0, 'Red', 4, 'Automatic', true);
  Motorcycle myBike = Motorcycle('BMW', 220, 20.0, 'Black', 'Sport', 1000, false);
  Truck myTruck = Truck('Mercedes-Benz', 120, 300.0, 'White', 25.0, 4, 'Refrigerated');

  // edit values using Setters
  myCar.color = 'Blue';
  myCar.speed = 280;

  myCar.toggleEngine();

  print('\nVehicles Details:');
  myCar.displayDetails();
  myBike.displayDetails();
  myTruck.displayDetails();
}