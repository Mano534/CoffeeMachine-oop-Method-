
import 'package:coffeemachine/coffeemachine_app.dart';

void main(List<String> arguments) {
  var coffeemachine = CoffeeMachine(50,50);
  //fake water level add 
  // coffeemachine.fakeCoffeeLevelAdd();
  // coffeemachine.fakeWaterLevelAdd();
  coffeemachine.makeCoffee(CoffeeSize.Coffee_Size_SMALL);
}
