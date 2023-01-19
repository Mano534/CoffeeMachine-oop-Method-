enum CoffeeSize {
  Coffee_Size_SMALL,
  Coffee_Size_MEDUIM,
  Coffee_Size_LARG,
  Coffee_Size_XLARG,
}

class CoffeeMachine {
// varables
  double _waterLevel = 0;
  double _coffeeLevel = 0;
// constructor
CoffeeMachine([double? waterLevel, double? coffeeLevel]){
  if(waterLevel != null){
  _waterLevel = waterLevel;
  }
  if(coffeeLevel != null){
  _coffeeLevel = coffeeLevel;

  }
}
// getter and setter for water level
  double get waterLevel => _waterLevel;
  set waterLevel(value) {
    if (value >= 0) {
      _waterLevel = value;
    } else {
      print('invalid water level');
    }
  }

// getter and setter for coffee level
  double get coffeeLevel => _coffeeLevel;
  set coffeeLevel(value) {
    if (value >= 0) {
      _coffeeLevel = value;
    } else {
      print('invalid coffee level');
    }
  }

  // Methods
  void fakeWaterLevelAdd() {
    waterLevel += 200;
  }

  void fakeCoffeeLevelAdd() {
    coffeeLevel += 300;
  }

  void turnAvaliableOptionsOn() {
    print('avalible options on');
  }

  void turnAvaliableOptionsOff() {
    print('avalible options off');
  }

  bool isWaterLevelEnough(CoffeeSize coffeeCZ) {
    return (coffeeCZ == CoffeeSize.Coffee_Size_SMALL && waterLevel >= 100);
  }

  bool isCoffeLevelEnough(CoffeeSize coffeeCZ) {
    return (coffeeCZ == CoffeeSize.Coffee_Size_SMALL && coffeeLevel >= 100);
  }

  void warnWaterLevel() {
    print('warning water low');
  }

  void warnCoffeeLevel() {
    print('warning coffee low');
  }

  makeCoffee(CoffeeSize coffeeSize) {
    turnAvaliableOptionsOff();
    bool enoughWater = isWaterLevelEnough(coffeeSize);
    bool enoughCoffee = isCoffeLevelEnough(coffeeSize);
    if (enoughCoffee && enoughWater) {
      waterLevel -= 200;
      coffeeLevel -= 100;
      print('making coffee');
    } else {
      warnCoffeeLevel();
      warnWaterLevel();
    }
    turnAvaliableOptionsOn();
  }
}
